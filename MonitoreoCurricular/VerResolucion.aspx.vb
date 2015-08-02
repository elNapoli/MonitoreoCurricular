Imports Models
Imports System.Web.Script.Serialization

Public Class VerResolucion
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
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