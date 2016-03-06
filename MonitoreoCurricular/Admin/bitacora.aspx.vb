Imports System.Web.Script.Serialization
Imports Models

Public Class bitacora
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        CargarUsuariosJSON()

    End Sub




    Private Sub CargarUsuariosJSON()

        Dim FILE_NAME As String = Server.MapPath("~") & "\JSON\bitacora.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Resoluciones As IEnumerable(Of Models.Bitacora) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Resoluciones = Conexion.TrearBitacora()


        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":")



        Dim serializedResult = serializer.Serialize(Resoluciones)

        objWriter.WriteLine(serializedResult)

        objWriter.WriteLine("}")

        objWriter.Close()
    End Sub




End Class