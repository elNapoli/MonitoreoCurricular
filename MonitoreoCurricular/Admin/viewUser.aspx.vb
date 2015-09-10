Imports Models

Public Class viewUser
    Inherits System.Web.UI.Page
    Public Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        WebControl.DisabledCssClass = "form-control"

        txt_run.Text = Request.QueryString("Rut")
        Dim User As New Usuario
        User = Conexion.TraeUsuarioPorRut(Request.QueryString("Rut"))
        txt_nombre.Text = User.Nombre
        txt_apPaterno.Text = User.apPaterno
        txt_apMaterno.Text = User.apMaterno
        txt_email.Text = User.email
        DDRol.SelectedIndex = User.Rol
        txt_nombre.Attributes("readonly") = "readonly"
        txt_apPaterno.Attributes("readonly") = "readonly"
        txt_apMaterno.Attributes("readonly") = "readonly"
        txt_email.Attributes("readonly") = "readonly"
        DDRol.Enabled = False

    End Sub

    Protected Sub BtnEliminar_Click(sender As Object, e As EventArgs)
        ' Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or _
        'MsgBoxStyle.Question()
        ' Dim response1 = MsgBox("Esta seguro que desea eliminar este usuario " + Request.QueryString("IDHistorial") + "?", style, "Eliminar registro")
        ' If response1 = MsgBoxResult.Yes Then
        'Conexion.EliminarUsuario(Request.QueryString("Rut"))
        '    MsgBox("El usuario se a eliminado exitosamente", , "Registro eliminado")
        '   Response.Redirect("ListUsuario.aspx")
        '   End If
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "EliminarUsuario", "EliminarUsuario();", True)
    End Sub

    Protected Sub BtnEditar_Click(sender As Object, e As EventArgs)
        txt_nombre.Attributes.Remove("readonly")
        txt_div.Text = txt_div.Text
        txt_apPaterno.Attributes.Remove("readonly")
        txt_apMaterno.Attributes.Remove("readonly")
        txt_email.Attributes.Remove("readonly")
        DDRol.Enabled = True
        BtnEditar.Visible = False
        BtnActualizar.Visible = True

    End Sub

    Protected Sub BtnActualizar_Click(sender As Object, e As EventArgs)
        BtnActualizar.Visible = False

        BtnEditar.Visible = True
    End Sub
End Class