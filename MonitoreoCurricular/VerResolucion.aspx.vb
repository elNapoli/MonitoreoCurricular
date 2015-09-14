﻿Imports Models
Imports System.Web.Script.Serialization

Public Class VerResolucion
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If (Request.QueryString("IDHistorial") <> Nothing And Request.QueryString("Eliminar") <> Nothing) Then
            If (Request.QueryString("Eliminar") = "True") Then

                If (Conexion.EliminarHistorial(Request.QueryString("IDHistorial")) = "1") Then

                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.success('El registro se ha eliminado correctamente');", True)
                Else
                    ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.error('Ha ocurrido un problema al intentar eliminar el registro!');", True)

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