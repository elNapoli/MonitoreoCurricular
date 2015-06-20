Imports System.Data
Imports System.Data.SqlClient
Imports System.Web.Services
Imports System.Web.Script.Serialization
Imports MonitoreoCurricular
Imports Models

Partial Class VBCode
    Inherits System.Web.UI.Page
    Shared Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(sender As Object, e As EventArgs)

    End Sub


    <WebMethod()> _
    Public Shared Function InsertData() As IEnumerable(Of Models.HistorialCurricular)
        Dim FILE_NAME As String = "C:\test.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Lista As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Lista = Conexion.TraeHistorialPorCarrera(12)


        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":")

        For Each ho In Lista
            ho.asignaturas = Conexion.TraeAsignaturasPorHistorial(ho.id)
        Next
        Dim serializedResult = serializer.Serialize(Lista)

        objWriter.WriteLine(serializedResult)

        objWriter.WriteLine("}")

        objWriter.Close()
        Return Lista

    End Function
End Class

