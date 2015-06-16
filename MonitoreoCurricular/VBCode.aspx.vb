Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Services
Imports System.Web.Script.Serialization
Imports MonitoreoCurricular

Partial Class VBCode
    Inherits System.Web.UI.Page
    Shared Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub
    

    <WebMethod()> _
    Public Shared Function InsertData() As IEnumerable(Of SrController.Parametros)


        Dim Lista As IEnumerable(Of SrController.Parametros) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Lista = Conexion.TraeFacultad()
        Dim serializedResult = serializer.Serialize(Lista)

        Return Lista

    End Function
End Class
