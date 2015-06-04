Public Class HistorialCurricular
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        WebControl.DisabledCssClass = "aspNetDisabled"
        If Not IsPostBack Then
            DDFacultad.DataSource = CallFacultad()
            DDFacultad.DataTextField = "nombre"
            DDFacultad.DataValueField = "id"
            DDFacultad.DataBind()
            DDFacultad.Items.Insert(0, New ListItem("--Seleccione Facultad--", "-1"))
            DDEscuela.Items.Insert(0, New ListItem("--Seleccione Escuela--", "-1"))
            DDCarrera.Items.Insert(0, New ListItem("--Seleccione Carrera--", "-1"))

          

            DDEscuela.Attributes.Add("disabled", "")
            DDCarrera.Attributes.Add("disabled", "")

        Else


        End If
    End Sub


    Public Sub SelectIndexChangeFacultad(sender As Object, e As EventArgs)

        If DDFacultad.SelectedIndex = 0 Then
            DDEscuela.Attributes.Add("disabled", "")
            DDCarrera.Attributes.Add("disabled", "")

        Else
            DDEscuela.Attributes.Remove("disabled")

            DDEscuela.DataSource = CallEscuelaPorFacultad(DDFacultad.SelectedValue)
            DDEscuela.DataTextField = "nombre"
            DDEscuela.DataValueField = "id"
            DDEscuela.DataBind()
            DDEscuela.Items.Insert(0, New ListItem("--Seleccione Escuela--", "-1"))

        End If
    End Sub

    Public Sub SelectIndexChangeEscuela(sender As Object, e As EventArgs)

        If DDEscuela.SelectedIndex = 0 Then
            DDCarrera.Attributes.Add("disabled", "")

        Else
            DDCarrera.Attributes.Remove("disabled")

            DDCarrera.DataSource = CallCarreraPorEscuela(DDEscuela.SelectedValue)
            DDCarrera.DataTextField = "nombre"
            DDCarrera.DataValueField = "id"
            DDCarrera.DataBind()
            DDCarrera.Items.Insert(0, New ListItem("--Seleccione Carrera--", "-1"))

        End If
    End Sub
    Private Function CallFacultad() As IEnumerable(Of SrController.Parametros)
        Dim Lista As IEnumerable(Of SrController.Parametros) = Nothing
        Try
            Lista = Conexion.TraeFacultad()
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function

    Private Function CallEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of SrController.Parametros)
        Dim Lista As IEnumerable(Of SrController.Parametros) = Nothing
        Try
            Lista = Conexion.TraeEscuelaPorFacultad(idFacultad)
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function

    Private Function CallCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of SrController.Parametros)
        Dim Lista As IEnumerable(Of SrController.Parametros) = Nothing
        Try
            Lista = Conexion.TraeCarreraPorEscuela(idEscuela)
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function


End Class