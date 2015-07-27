Public Class HistorialCurricular
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim FILE_NAME As String = Server.MapPath("~") & "\JSON\Carrera_historial.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)


       





        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":[]")

        objWriter.WriteLine("}")

        objWriter.Close()

    End Sub


End Class