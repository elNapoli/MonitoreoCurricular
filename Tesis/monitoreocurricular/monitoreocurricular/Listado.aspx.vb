Imports System.ServiceModel

Public Class Listado
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        tabla1.DataSource = CallListaProgramas()
        tabla1.DataBind()



    End Sub

    Private Function CallListaProgramas() As IEnumerable(Of SrController.Facultad)
        Dim Lista As IEnumerable(Of SrController.Facultad) = Nothing
        Try
            Lista = Conexion.TraeFacultad()
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function


End Class