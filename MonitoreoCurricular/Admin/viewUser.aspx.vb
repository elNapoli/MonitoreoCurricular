Imports Models

Public Class viewUser
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            DDRol.DataTextField = "nombre"
            DDRol.DataValueField = "id"
            DDRol.DataSource = Conexion.TraeRol()
            DDRol.DataBind()
            DDRol.Items.Insert(0, New ListItem("-- Seleccione Rol --", ""))
        End If
        If (Request.QueryString("save") <> Nothing) Then
            ClientScript.RegisterClientScriptBlock(Me.GetType(), "alert", "alertify.success('Se ha guardado correctamente el rut =" + Request.QueryString("rut") + " exitosamente');", True)

        End If
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
        Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or _
    MsgBoxStyle.Question
        Dim response1 = MsgBox("Esta seguro que desea eliminar este usuario " + Request.QueryString("IDHistorial") + "?", style, "Eliminar registro")
        If response1 = MsgBoxResult.Yes Then
            Conexion.EliminarUsuario(Request.QueryString("Rut"))
            MsgBox("El usuario se a eliminado exitosamente", , "Registro eliminado")
            Response.Redirect("ListUsuario.aspx")
        End If
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