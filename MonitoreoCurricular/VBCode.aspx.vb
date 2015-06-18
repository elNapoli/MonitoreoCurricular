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

        ' Declarar colección Hashtable
        Dim htCliente As Hashtable
        htCliente = New Hashtable()
        Dim numbers = {1, 2}

        htCliente.Add("ID", 2245321)
        htCliente.Add("Nombre", "Pedro")
        htCliente.Add("Apellidos", "Santana")
        htCliente.Add("Domicilio", "C/ Espinar, 42")
        htCliente.Add("Edad", {33, 22})

        Dim Lista As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Dim Lista2 As IEnumerable(Of Parametros) = Nothing

        Dim serializer As New JavaScriptSerializer()

        Lista = Conexion.TraeHistorialPorCarrera(12)
        Lista2 = Conexion.TraeAsignaturasPorHistorial(1)
        Dim temp = Lista.ToArray
        Const quote As String = """"
        Dim serializedResult = serializer.Serialize(Lista)
        objWriter.WriteLine("{" & quote & "data" & quote & ":")


        objWriter.WriteLine(serializedResult)
        objWriter.WriteLine(serializer.Serialize(Lista2))



        objWriter.WriteLine("}")

        objWriter.Close()
        Return Lista

    End Function
End Class

