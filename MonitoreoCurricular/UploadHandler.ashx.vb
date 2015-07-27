Imports System.Web
Imports System.Web.Services
Imports System.IO

Public Class UploadHandler
    Implements System.Web.IHttpHandler
    Private Conexion As New SrController.ControllerClient

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        If context.Request.Files.Count > 0 Then
            Dim fileUpload As HttpPostedFile = context.Request.Files(0)
            Dim idHistorial As String = context.Request.Params("idNuevoHistorial")


            Dim uploadPath As String = context.Server.MapPath("~/Resoluciones/")
            Dim fileName As String = Replace(fileUpload.FileName, " ", "_")


            Conexion.GuardarResolucionPorHistorial(idHistorial, fileName, fileName)
            Dim chunk As Integer = If(context.Request("chunk") IsNot Nothing, Integer.Parse(context.Request("chunk")), 0)

            Using fs = New FileStream(Path.Combine(uploadPath, fileName), If(chunk = 0, FileMode.Create, FileMode.Append))
                Dim buffer = New Byte(fileUpload.InputStream.Length - 1) {}
                fileUpload.InputStream.Read(buffer, 0, buffer.Length)

                fs.Write(buffer, 0, buffer.Length)

            End Using
        End If



    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class