Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Web.Script.Services
Imports AjaxControlToolkit
Imports Models
Imports System.Threading

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
    Public Function GuardarHistorial(Plan As String, Carrera As String, Fecha As String, Hito As String, Asignaturas As String(), Descripcion As String, Antes As String, Despues As String) As String()
        Dim array As String = ""
        Dim idHistorial As Integer
        Dim resultado(1) As String
        Try
            Dim Historial As New Models.HistorialCurricular(Plan, Carrera, Fecha, Hito, Descripcion, Antes, Despues)

            idHistorial = Conexion.GuardarHistorial(Historial)
            resultado(0) = idHistorial.ToString
            resultado(1) = "Se ha guardado exitosamente el registro"
            For Each item As String In Asignaturas
                Conexion.GuardarAsignaturaPorHistorial(idHistorial, item)
            Next
            Return resultado
        Catch ex As Exception

            resultado(0) = "0"
            resultado(1) = (ex.Message)
            Return resultado
        End Try



    End Function




    <WebMethod()> _
    Public Function ActualizarHistorial(idHistorial As Integer, Plan As String, Carrera As String, Fecha As String, Hito As String, Asignaturas As String(), Descripcion As String, Antes As String, Despues As String) As String()
        Dim Historial As New Models.HistorialCurricular(idHistorial, Plan, Carrera, Fecha, Hito, Descripcion, Antes, Despues)
        Dim ValidadorHistorial As Integer
        Dim retorno(1) As String
        Dim seguir As String = "True"

        ValidadorHistorial = ActualizarHistorial(Historial)
        Conexion.EliminarAsignaturasPorHistorial(idHistorial)

        If ValidadorHistorial = 1 Then
            If Not Asignaturas Is Nothing Then

                For Each item As String In Asignaturas

                    If (Conexion.GuardarAsignaturaPorHistorial(idHistorial, item) <> 1) Then
                        seguir = "False"


                        Exit For
                    End If

                Next

                If (seguir = "True") Then
                    retorno(0) = 1
                    retorno(1) = "se ha guardado correctamente el registro."
                Else
                    retorno(0) = -1
                    retorno(1) = "Hubo un error al actualizar las asignaturas"
                End If
            End If


        End If


        Return (retorno)

    End Function


    <WebMethod()> _
    Public Sub ActualizarUsuario(Rut As Integer, Nombre As String, ApPaterno As String, ApMaterno As String, Email As String, Rol As Integer)
        Dim Usuario As New Usuario(Rut, Nombre, Rol, ApPaterno, ApMaterno, Email)

        Conexion.ActualizarUsuario(Usuario)


    End Sub


    Private Function ActualizarHistorial(historial As Models.HistorialCurricular) As Integer
        Dim resultado As Integer
        Try
            resultado = Conexion.ActualizarHistorial(historial).ToString


        Catch ex As Exception
            MsgBox(ex.Message)
            resultado = -2
        End Try

        Return resultado
    End Function




End Class