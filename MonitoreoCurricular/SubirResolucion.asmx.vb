﻿Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Web.Script.Services
Imports AjaxControlToolkit
Imports Models

<ScriptService()> _
Public Class SubirResolucion1
    Inherits System.Web.Services.WebService
    Private Conexion As New SrController.ControllerClient

    <WebMethod()> _
    Public Function CallPlan(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Parametros) = Nothing

        Lista = Conexion.TraePlan()
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()

    End Function

    <WebMethod()> _
    Public Function CallCarreraPorPlan(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Parametros) = Nothing
        Dim PlanId As Integer = CascadingDropDown.ParseKnownCategoryValuesString(knownCategoryValues)("PlanId")
        '  MsgBox(FacultadId)
        Lista = Conexion.TraeCarreraPorPlan(PlanId)
        For Each item As Parametros In Lista
            l.Add(New CascadingDropDownNameValue(item.nombre.ToString, item.id.ToString))
        Next
        Return l.ToArray()

    End Function


    <WebMethod()> _
    Public Function CallAsignaturas(ByVal knownCategoryValues As String, ByVal category As String) As CascadingDropDownNameValue()

        Dim l As New List(Of CascadingDropDownNameValue)
        Dim Lista As IEnumerable(Of Asignaturas) = Nothing

        Lista = Conexion.TraeAsignatura()
        For Each item As Asignaturas In Lista
            l.Add(New CascadingDropDownNameValue(item.nomAsignatura.ToString, item.idAsignatura.ToString))
        Next
        Return l.ToArray()

    End Function

    <WebMethod()> _
    Public Function GuardarHistorial(Plan As String, Carrera As String, Fecha As String, Hito As String, Asignaturas As String(), Descripcion As String, Antes As String, Despues As String) As String
        Dim array As String = ""

        Try
            Dim Historial As New Models.HistorialCurricular(Plan, Carrera, Fecha, Hito, Descripcion, Antes, Despues)

            Conexion.GuardarHistorial(Historial)

            For Each item As String In Asignaturas
                array = array + "," + item
                'Conexion.GuardarAsignaturaPorHistorial()
            Next

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try


        Return array
    End Function






End Class