﻿Imports Models
Public Class WebForm3
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    





    End Sub

    Private Function VerificarUsuario(rut As Integer, pass As String) As Usuario
        Dim Lista As New Usuario
        Try
            Lista = Conexion.ValidarUsuario(rut, pass)



        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function

    Protected Sub validar_Click(sender As Object, e As EventArgs)
        Dim usuario As New Usuario

        usuario = VerificarUsuario(nick.Text, TextBox1.Text)
        If usuario.Rol Is Nothing Then
            MsgBox("No tiene permisos")
        Else
            Session.Add("USUARIO_ACTUAL", usuario)
            Response.Redirect("~/index.aspx", True)
        End If
    End Sub
End Class