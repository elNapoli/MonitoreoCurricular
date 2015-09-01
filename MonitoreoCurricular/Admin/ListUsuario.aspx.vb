Imports Models
Imports System.Web.Script.Serialization

Public Class ListUsuario
    Inherits System.Web.UI.Page
    Private Conexion As New SrController.ControllerClient
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        CargarUsuariosJSON()
    End Sub

    Private Function CallUsuarios() As IEnumerable(Of Usuario)
        Dim Lista As IEnumerable(Of Usuario) = Nothing
        Try
            Lista = Conexion.TraeUsuarios()

        Catch ex As Exception
            MsgBox(ex.Message)

        End Try

        Return Lista
    End Function


    Private Sub CargarUsuariosJSON()

        Dim FILE_NAME As String = Server.MapPath("~") & "\JSON\Todos_usuarios.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Resoluciones As IEnumerable(Of Models.Usuario) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Resoluciones = CallUsuarios()


        Const quote As String = """"
        objWriter.WriteLine("{" & quote & "data" & quote & ":")



        Dim serializedResult = serializer.Serialize(Resoluciones)

        objWriter.WriteLine(serializedResult)

        objWriter.WriteLine("}")

        objWriter.Close()
    End Sub
End Class