Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Web.Script.Services
Imports AjaxControlToolkit
Imports Models

<ScriptService()> _
Public Class HistorialCurricular
    Inherits System.Web.Services.WebService
    Private Conexion As New SrController.ControllerClient

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

        Lista = Conexion.TraeCarreraPorEscuela(EscuelaId)
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()

    End Function



End Class