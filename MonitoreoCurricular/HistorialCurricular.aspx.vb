Imports Models

Public Class HistorialCurricular
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load
        If Not IsPostBack Then
            DDFacultad.DataSource = CallFacultad()
            DDFacultad.DataTextField = "nombre"
            DDFacultad.DataValueField = "id"
            DDFacultad.DataBind()

            DDEscuela.Enabled = False
            DDCarrera.Enabled = False
            DDEscuela.Items.Insert(0, New ListItem("Seleccione escuela", "0"))
            DDCarrera.Items.Insert(0, New ListItem("Seleccione Carrera", "0"))
        End If
    End Sub

    Protected Sub Facultad_Changed(sender As Object, e As EventArgs)
        DDEscuela.Enabled = False
        DDCarrera.Enabled = False
        DDEscuela.Items.Clear()
        DDCarrera.Items.Clear()
        DDEscuela.Items.Insert(0, New ListItem("Select State", "0"))
        DDCarrera.Items.Insert(0, New ListItem("Select City", "0"))

        Dim FacultadId As Integer = Integer.Parse(DDFacultad.SelectedItem.Value)
        If FacultadId > 0 Then
            DDEscuela.DataSource = CallEscuelaPorFacultad(FacultadId)
            DDEscuela.DataTextField = "nombre"
            DDEscuela.DataValueField = "id"
            DDEscuela.DataBind()

            DDEscuela.Enabled = True
        End If
    End Sub
    Protected Sub Escuela_Changed(sender As Object, e As EventArgs)
        DDCarrera.Enabled = False
        DDCarrera.Items.Clear()
        DDCarrera.Items.Insert(0, New ListItem("Select City", "0"))
        Dim EscuelaId As Integer = Integer.Parse(DDEscuela.SelectedItem.Value)
        If EscuelaId > 0 Then
            DDCarrera.DataSource = CallCarreraPorEscuela(EscuelaId)
            DDCarrera.DataTextField = "nombre"
            DDCarrera.DataValueField = "id"
            DDCarrera.DataBind()

            DDCarrera.Enabled = True
        End If
    End Sub

    Private Function CallFacultad() As IEnumerable(Of Parametros)
        Dim Lista As IEnumerable(Of parametros) = Nothing
        Try
            Lista = Conexion.TraeFacultad()
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function

    Private Function CallEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of Parametros)
        Dim Lista As IEnumerable(Of parametros) = Nothing
        Try
            Lista = Conexion.TraeEscuelaPorFacultad(idFacultad)
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function

    Private Function CallCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of Parametros)
        Dim Lista As IEnumerable(Of Parametros) = Nothing
        Try
            Lista = Conexion.TraeCarreraPorEscuela(idEscuela)
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function
End Class