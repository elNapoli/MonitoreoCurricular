Imports Models

Public Class SubirResolucion
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        FechaResolucion.Text = System.DateTime.Today

        DDAsignaturas.DataTextField = "nomAsignatura"
        DDAsignaturas.DataValueField = "idAsignatura"
        DDAsignaturas.DataSource = CallFacultad()
        DDAsignaturas.DataBind()

    End Sub
 


    Private Function CallFacultad() As IEnumerable(Of Asignaturas)
        Dim Lista As IEnumerable(Of Asignaturas) = Nothing
        Try
            Lista = Conexion.TraeAsignatura()

        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function

End Class