﻿Imports System.Web
Imports System.Web.Services
Imports MonitoreoCurricular.SubirResolucion
Public Class Handler1
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        context.Response.ContentType = "text/plain"
        context.Response.Write("¡Hola a todos!")

    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class