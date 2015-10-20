Imports Models
Imports System.Web.Script.Serialization

Public Class VerResolucion
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim logTemp As LogNapoli
        Dim logListTemp As IEnumerable(Of LogNapoli)
        Dim logListTempRES As IEnumerable(Of LogNapoli)
        Dim rootPath As String = Server.MapPath("~") + "Resoluciones\"
        Dim stringTemp As String()
        If (Request.QueryString("IDHistorial") <> Nothing And Request.QueryString("Eliminar") <> Nothing) Then
            If (Request.QueryString("Eliminar") = "True") Then
                logListTemp = Conexion.EliminarAsignaturasPorHistorial(Request.QueryString("IDHistorial"))


                For Each item As LogNapoli In logListTemp
                    item.Rut = Master.Rut_temp()
                    Conexion.RegistrarLog(item)
                Next

                logListTempRES = Conexion.EliminarResolucionPorHistorial(Request.QueryString("IDHistorial"))






                For Each item As LogNapoli In logListTempRES
                    If item.CodigoError = "1" Then
                        stringTemp = Split(item.mensajeError, ":")

                        My.Computer.FileSystem.DeleteFile(rootPath + stringTemp(1))
                    End If
                    item.Rut = Master.Rut_temp()
                    Conexion.RegistrarLog(item)

                Next
                logTemp = Conexion.EliminarHistorial(Request.QueryString("IDHistorial"))
                logTemp.Rut = Master.Rut_temp()


                Conexion.RegistrarLog(logTemp)

                If (Convert.ToInt32(logTemp.CodigoError) = 1) Then

                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.success('" + logTemp.mensajeError.Replace("'", " ").Replace("""", " ") + "');", True)
                Else
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.set({ delay: 10000 });alertify.error('" + logTemp.mensajeError.Replace("'", " ").Replace("""", " ") + "')", True)

                End If

            End If
        End If

        CargarResolucionesJSON()


    End Sub



    Private Function CallResolucion() As IEnumerable(Of Resoluciones)
        Dim Lista As IEnumerable(Of Resoluciones) = Nothing
        Try
            Lista = Conexion.TraeResoluciones()

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function


    Private Sub CargarResolucionesJSON()

        Dim FILE_NAME As String = Server.MapPath("~") & "\JSON\Todas_resoluciones.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Resoluciones As IEnumerable(Of Models.Resoluciones) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Resoluciones = CallResolucion()


        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":")

       

        Dim serializedResult = serializer.Serialize(Resoluciones)

        objWriter.WriteLine(serializedResult)

        objWriter.WriteLine("}")

        objWriter.Close()
    End Sub
End Class