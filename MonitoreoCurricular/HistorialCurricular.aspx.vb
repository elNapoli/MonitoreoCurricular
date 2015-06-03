Public Class HistorialCurricular
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not IsPostBack Then
            DDFacultad.DataSource = CallFacultad()
            DDFacultad.DataTextField = "nombre"
            DDFacultad.DataValueField = "id"
            DDFacultad.DataBind()
            DDFacultad.Items.Insert(0, New ListItem("--Seleccione Facultad--", "0"))


        Else


        End If
    End Sub

    Private Function CallFacultad() As IEnumerable(Of SrController.Facultad)
        Dim Lista As IEnumerable(Of SrController.Facultad) = Nothing
        Try
            Lista = Conexion.TraeFacultad()
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function



End Class