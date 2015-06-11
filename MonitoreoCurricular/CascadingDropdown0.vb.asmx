<%@ WebService Language="VB" Class="CascadingDropDown0" %>

Imports System.Web.Script.Services
Imports AjaxControlToolkit
Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Collections.Generic
Imports MonitoreoCurricular

<ScriptService()> _
Public Class CascadingDropDown0
  Inherits System.Web.Services.WebService
    Private Conexion As New SrController.ControllerClient
    
  <WebMethod()> _
  Public Function GetVendors(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
        Dim l As New List(Of CascadingDropDownNameValue)
        Dim list As IEnumerable(Of SrController.Parametros)
        
        list = CallFacultad()
        For Each item As SrController.Parametros In list
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()
        
    End Function

    
    Private Function CallFacultad() As IEnumerable(Of SrController.Parametros)
        Dim Lista As IEnumerable(Of SrController.Parametros) = Nothing
        Try
            Lista = Conexion.TraeFacultad()
        Catch
            ' Throw New Exception(ex.Detail.Detalle)

        End Try

        Return Lista
    End Function
    
End Class
