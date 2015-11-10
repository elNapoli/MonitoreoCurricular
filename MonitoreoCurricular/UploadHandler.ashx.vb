Imports System.Web
Imports System.Web.Services
Imports System.IO
Imports Models

Public Class UploadHandler
    Implements System.Web.IHttpHandler
    Private Conexion As New SrController.ControllerClient

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        If context.Request.Files.Count > 0 Then
            Dim fileUpload As HttpPostedFile = context.Request.Files(0)
            Dim idHistorial As String = context.Request.Params("idNuevoHistorial")
            Dim NombreResolucion As String = context.Request.Params("NombreRel")
            Dim TipoResolucion As String = context.Request.Params("tipoDoc")
            Dim logTemp As LogNapoli

            Dim uploadPath As String = context.Server.MapPath("~/Resoluciones/")
            Dim fileName As String = Replace(fileUpload.FileName, " ", "_")

            Dim Rut As String = context.Request.Params("RutUsuario")


            logTemp = Conexion.GuardarResolucionPorHistorial(idHistorial, TipoResolucion + " " + NombreResolucion, fileName)
            logTemp.Rut = Rut

            Conexion.RegistrarLog(logTemp)

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