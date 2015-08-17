Imports Models
Public Class WebForm3
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
    





    End Sub

    Private Function VerificarUsuario(rut As Integer, pass As String) As Integer
        Dim Lista As IEnumerable(Of Usuario) = Nothing
        Dim Permiso As Integer = 0
        Try
            Lista = Conexion.ValidarUsuario(rut, pass)
            Permiso = Lista.Count()


        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Permiso
    End Function

    Protected Sub validar_Click(sender As Object, e As EventArgs)
        MsgBox(VerificarUsuario(nick.Text, TextBox1.Text))
    End Sub
End Class