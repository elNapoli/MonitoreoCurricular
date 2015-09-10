﻿Imports Models

Public Class HistorialId
    Inherits System.Web.UI.Page
    Public Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        IdHistorialURL.Text = Request.QueryString("IDHistorial")
        If (Me.IsPostBack) Then

            Dim fechaTemp As String
            If (String.IsNullOrEmpty(FechaResolucionT.Text)) Then
                fechaTemp = (FechaResolucion.Text)
            Else
                fechaTemp = (FechaResolucionT.Text)
            End If

            Dim Historial As New Models.HistorialCurricular(Request.QueryString("IDHistorial"), DDPlan.SelectedValue, DDCarrera.SelectedValue, fechaTemp, DDHito.Text, Descripcion.Value, antes.Value, despues.Value)
            ActualizarHistorial(Historial)
        End If
        '  DDAsignaturas.Attributes.Add("disabled", "disabled")
        WebControl.DisabledCssClass = "form-control"
        Dim historialTemp As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Dim resolucionesTemp As IEnumerable(Of Models.Resoluciones) = Nothing
        Dim asignaturasTemp As IEnumerable(Of Models.Parametros) = Nothing

        historialTemp = CallHistorialById(Request.QueryString("IDHistorial"))
        asignaturasTemp = CallAsignaturasPorHistorial(Request.QueryString("IDHistorial"))
        resolucionesTemp = CallResolucionesPorHistorial(Request.QueryString("IDHistorial"))



        DDCarrera.Enabled = False
        DDPlan.Enabled = False
        DDHito.Enabled = False

        despues.Attributes("readonly") = "readonly"
        antes.Attributes("readonly") = "readonly"
        Descripcion.Attributes("readonly") = "readonly"


        DDAsignaturas.DataTextField = "nomAsignatura"
        DDAsignaturas.DataValueField = "idAsignatura"
        DDAsignaturas.DataSource = CallAsignatura()
        DDAsignaturas.DataBind()

        Dim divString As String
        divString = ""
        For Each item As Models.Resoluciones In resolucionesTemp

            divString += "<div class='file'> " +
                             "<a href='/Resoluciones/" + item.path + "'>" + item.nombre +
                             "</a>" +
                             "</div>"


        Next
        divResoluciones.InnerHtml = divString

        Dim idTemp As String
        idTemp = ""

        For Each item As Models.Parametros In asignaturasTemp
            idTemp += item.id + "."


        Next


        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "holamundo", "holamundo('" + idTemp + "','True');", True)
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


    Private Sub ActualizarHistorial(historial As Models.HistorialCurricular)

        Try
            Conexion.ActualizarHistorial(historial)

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try


    End Sub

    Private Function CallHistorialById(idHistorial As Integer) As IEnumerable(Of Models.HistorialCurricular)
        Dim Lista As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Try
            Lista = Conexion.TraeHistorialPorId(idHistorial)

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function


    Private Function CallResolucionesPorHistorial(idHistorial As Integer) As IEnumerable(Of Models.Resoluciones)
        Dim Lista As IEnumerable(Of Models.Resoluciones) = Nothing
        Try
            Lista = Conexion.TraeResolucionPorHistorial(idHistorial)

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

        '  Dim style = MsgBoxStyle.YesNo Or MsgBoxStyle.DefaultButton2 Or _
        'MsgBoxStyle.Question()
        '   Dim response1 = MsgBox("Esta seguro que desea eliminar este registro " + Request.QueryString("IDHistorial") + "?", style, "Eliminar registro")
        '   If response1 = MsgBoxResult.Yes Then
        'Conexion.EliminarHistorial(Request.QueryString("IDHistorial"))
        '    MsgBox("El registro se a eliminado exitosamente", , "Registro eliminado")
        '    Response.Redirect("VerResolucion.aspx")
        '   End If
        ScriptManager.RegisterStartupScript(Me, Me.GetType(), "EliminarRegistro", "EliminarRegistro();", True)

    End Sub
    Protected Sub HabilitarEdicion(sender As Object, e As EventArgs)

        DDAsignaturas.Attributes.Remove("disabled")
        DDPlan.Enabled = True
        DDCarrera.Enabled = True
        DDHito.Enabled = True
        despues.Attributes.Remove("readonly")
        antes.Attributes.Remove("readonly")
        Descripcion.Attributes.Remove("readonly")
        BtnActualizar.Visible = True

        BtnEditar.Visible = False

        Dim asignaturasTemp As IEnumerable(Of Models.Parametros) = Nothing

        asignaturasTemp = CallAsignaturasPorHistorial(Request.QueryString("IDHistorial"))
        Dim idTemp As String
        idTemp = ""

        For Each item As Models.Parametros In asignaturasTemp
            idTemp += item.id + "."


        Next

    End Sub
    Protected Sub ActualizarHistorial(sender As Object, e As EventArgs)
        BtnActualizar.Visible = False

        BtnEditar.Visible = True
    End Sub

End Class