Imports Models
Public Class Login
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Me.IsPostBack Then
            If Me.Page.User.Identity.IsAuthenticated Then
                FormsAuthentication.SignOut()
                Response.Redirect("~/Login.aspx")

            End If
        End If
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
  

            Dim userId As Integer = 0
            Dim roles As String = String.Empty
            Dim usuario As New Usuario
        Try
            usuario = VerificarUsuario(txt_Username.Text, txt_Password.Text)


            userId = usuario.Rut
            roles = usuario.Rol

            Select Case userId
                Case -1
                    statusLogin.Text = "R.U.N. y/o contraseña son  inválidas"
                    Exit Select
                Case -2

                    Exit Select
                Case Else
                    Dim ticket As New FormsAuthenticationTicket(1, usuario.Nombre + "|" + userId.ToString, DateTime.Now, DateTime.Now.AddMinutes(2880), rememberLogin.Checked, roles, _
                     FormsAuthentication.FormsCookiePath)
                    Dim hash As String = FormsAuthentication.Encrypt(ticket)
                    Dim cookie As New HttpCookie(FormsAuthentication.FormsCookieName, hash)

                    If ticket.IsPersistent Then
                        cookie.Expires = ticket.Expiration
                    End If
                    Response.Cookies.Add(cookie)

                    Response.Redirect(FormsAuthentication.GetRedirectUrl(txt_Username.Text, rememberLogin.Checked))
                    Exit Select
            End Select



        Catch ex As Exception
            statusLogin.Text = "Error, ha el rut debe ser solo números "
        End Try

            
        
    End Sub
End Class