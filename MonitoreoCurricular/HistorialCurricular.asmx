<%@ WebService Language="VB" Class="HistorialCurricular" %>

Imports System.Web.Script.Services
Imports AjaxControlToolkit
Imports System.Web
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Collections.Generic
Imports MonitoreoCurricular
Imports Models
Imports System.Web.Script.Serialization

<ScriptService()> _
Public Class HistorialCurricular
    Inherits System.Web.Services.WebService
    Private Conexion As New SrController.ControllerClient
    Dim jsonTrue As Integer

    <WebMethod()> _
    Public Function CallFacultad(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
        
        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Parametros) = Nothing
        
        Lista = Conexion.TraeFacultad()
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()
        
    End Function
    
    <WebMethod()> _
    Public Function CallEscuelaPorFacultad(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
 
        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Parametros) = Nothing
        Dim FacultadId As Integer = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)("FacultadId")
      '  MsgBox(FacultadId)
        Lista = Conexion.TraeEscuelaPorFacultad(FacultadId)
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()
        
    End Function
    
    <WebMethod()> _
    Public Function CallCarreraPorEscuela(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()
 
        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Parametros) = Nothing
        Dim EscuelaId As Integer = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)("EscuelaId")
        ' MsgBox(EscuelaId)
        Lista = Conexion.TraeCarreraPorEscuela(EscuelaId)
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()
        
    End Function
    
    
    <WebMethod()> _
    Public Sub CargarHistorialPorCarrera(carreraID As String)


        Dim FILE_NAME As String = Server.MapPath("~") & "\JSON\Carrera_historial.txt"
        Dim objWriter As New System.IO.StreamWriter(FILE_NAME)
        Dim Historial As IEnumerable(Of Models.HistorialCurricular) = Nothing
        Dim Resolucion As IEnumerable(Of Models.Resoluciones) = Nothing
        Dim serializer As New JavaScriptSerializer()

        Historial = Conexion.TraeHistorialPorCarrera(carreraID)


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
    End Sub
 

    
End Class
