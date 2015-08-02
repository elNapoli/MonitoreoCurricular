Imports Models

Public Class HistorialId
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        '   Dim historialTemp As Models.HistorialCurricular
        '   historialTemp = CallHistorialById(Request.QueryString("id"))

        CDPlan.SelectedValue = "2015"

        CDCarrera.SelectedValue = "11"
        FechaResolucion.Text = "01/01/2022"
        DDHito.SelectedValue = "Modificaicón menor"
        Dim r As String
        r = "hola_perra "

        Descripcion.Value = "no se que hago"
        antes.Value = "antes no se "
        despues.Value = " jaja "

        DDAsignaturas.DataTextField = "nomAsignatura"
        DDAsignaturas.DataValueField = "idAsignatura"
        DDAsignaturas.DataSource = CallAsignatura()
        DDAsignaturas.DataBind()
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "holamundo", "holamundo('" + r + "');", True)

    End Sub

    Private Function CallAsignatura() As IEnumerable(Of Asignaturas)
        Dim Lista As IEnumerable(Of Asignaturas) = Nothing
        Try
            Lista = Conexion.TraeAsignatura()

        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function


End Class