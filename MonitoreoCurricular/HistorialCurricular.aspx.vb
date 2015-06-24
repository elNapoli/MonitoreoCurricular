Public Class HistorialCurricular
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
       
    End Sub

    Protected Sub DDCarrera_SelectedIndexChanged(sender As Object, e As EventArgs)
        MsgBox("hola")
    End Sub
End Class