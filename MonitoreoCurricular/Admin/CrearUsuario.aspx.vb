﻿Imports Models
Public Class CrearUsuario
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        lerolero.Text = TextBox1.Text
    End Sub

    Protected Sub btnGuardarUsuario_Click(sender As Object, e As EventArgs)
        Try
            Dim usuarioTemp As New Usuario(Integer.Parse(txt_run.Text), txt_nombre.Text, DDRol.SelectedValue, txt_apPaterno.Text, txt_apMaterno.Text, txt_email.Text, txt_run.Text.Substring(0, 6))
            Dim logTemp As New LogNapoli
            logTemp = Conexion.GuardarUsuario(usuarioTemp)
            logTemp.Rut = Master.Rut_temp()
            Conexion.RegistrarLog(logTemp)
            Response.Redirect("/Admin/viewUser.aspx?Rut=" + txt_run.Text + "&save=true")
        Catch ex As Exception

            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.error('" + ex.Message.ToString + "');", True)
        End Try



    End Sub


End Class