Imports Models

Public Class VerResolucion
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

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

End Class