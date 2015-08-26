Imports System.Web.SessionState
Imports System.Security.Principal

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al iniciar la aplicación
    End Sub

    Sub Session_Start(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al iniciar la sesión
    End Sub

    Sub Application_BeginRequest(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena al comienzo de cada solicitud
    End Sub

    Sub Application_AuthenticateRequest(ByVal sender As Object, ByVal e As EventArgs)
        If HttpContext.Current.User IsNot Nothing Then
            If HttpContext.Current.User.Identity.IsAuthenticated Then
                If TypeOf HttpContext.Current.User.Identity Is FormsIdentity Then
                    Dim id As FormsIdentity = DirectCast(HttpContext.Current.User.Identity, FormsIdentity)
                    Dim ticket As FormsAuthenticationTicket = id.Ticket
                    Dim userData As String = ticket.UserData
                    Dim roles As String() = userData.Split(","c)
                    HttpContext.Current.User = New GenericPrincipal(id, roles)
                End If
            End If
        End If
    End Sub

    Sub Application_Error(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando se produce un error
    End Sub

    Sub Session_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la sesión
    End Sub

    Sub Application_End(ByVal sender As Object, ByVal e As EventArgs)
        ' Se desencadena cuando finaliza la aplicación
    End Sub

End Class