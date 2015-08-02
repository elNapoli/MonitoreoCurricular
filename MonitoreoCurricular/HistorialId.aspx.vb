Imports Models

Public Class HistorialId
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim historialTemp As IEnumerable(Of Models.HistorialCurricular) = Nothing

        historialTemp = CallHistorialById(Request.QueryString("IDHistorial"))

        Dim asignaturasTemp As IEnumerable(Of Models.Parametros) = Nothing

        asignaturasTemp = CallAsignaturasPorHistorial(Request.QueryString("IDHistorial"))

        DDAsignaturas.DataTextField = "nomAsignatura"
        DDAsignaturas.DataValueField = "idAsignatura"
        DDAsignaturas.DataSource = CallAsignatura()
        DDAsignaturas.DataBind()

        Dim idTemp As String
        idTemp = ""

        For Each item As Models.Parametros In asignaturasTemp
            idTemp += item.id + "."


        Next
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "holamundo", "holamundo('" + idTemp + "');", True)
        For Each item As Models.HistorialCurricular In historialTemp

            CDPlan.SelectedValue = item.idPlan.ToString
            CDCarrera.SelectedValue = item.idCarrera.ToString
            FechaResolucion.Text = item.fecha.ToString
            DDHito.SelectedValue = item.hito.ToString
       


            Descripcion.Value = item.descripcion.ToString
            antes.Value = item.antes.ToString
            despues.Value = item.despues.ToString
        Next

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

    Private Function CallHistorialById(idHistorial As Integer) As IEnumerable(Of Models.HistorialCurricular)
        Dim Lista As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Try
            Lista = Conexion.TraeHistorialPorId(idHistorial)

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function



    Private Function CallAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of Models.Parametros)
        Dim Lista As IEnumerable(Of Models.Parametros) = Nothing
        Try
            Lista = Conexion.TraeAsignaturasPorHistorial(idHistorial)

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function


    Protected Sub EliminarHistorial(sender As Object, e As EventArgs)

        Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or _
            MsgBoxStyle.Question
        Dim response1 = MsgBox("Esta seguro que desea eliminar este registro " + Request.QueryString("IDHistorial") + "?", style, "Eliminar registro")
        If response1 = MsgBoxResult.Yes Then
            Conexion.EliminarHistorial(Request.QueryString("IDHistorial"))
            MsgBox("El registro se a eliminado exitosamente", , "Registro eliminado")
            Response.Redirect("VerResolucion.aspx")
        End If

    End Sub
End Class