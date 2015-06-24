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
    Protected Sub itemSelected(sender As Object, e As EventArgs)

        MsgBox("hola")
    End Sub

    <WebMethod()> _
    Public Shared Function InsertData() As IEnumerable(Of Models.HistorialCurricular)
        Dim FILE_NAME As String = "C:\test.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Historial As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Dim Resolucion As IEnumerable(Of Models.Resoluciones) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Historial = Conexion.TraeHistorialPorCarrera(12)


        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":")

        For Each ho In Historial
            ho.Asignaturas = Conexion.TraeAsignaturasPorHistorial(ho.id)
            ho.Resoluciones = Conexion.TraeResolucionPorHistorial(ho.id)
        Next

        Dim serializedResult = serializer.Serialize(Historial)

        objWriter.WriteLine(serializedResult)

        objWriter.WriteLine("}")

        objWriter.Close()
        Return Historial

    End Function

    Protected Sub Unnamed_SelectedIndexChanged(sender As Object, e As EventArgs)
        MsgBox("hola")
    End Sub
End Class

