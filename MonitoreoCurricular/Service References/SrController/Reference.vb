﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.34209
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Namespace SrController
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="SrController.IController")>  _
    Public Interface IController
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeFacultad", ReplyAction:="http://tempuri.org/IController/TraeFacultadResponse")>  _
        Function TraeFacultad() As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeFacultad", ReplyAction:="http://tempuri.org/IController/TraeFacultadResponse")>  _
        Function TraeFacultadAsync() As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeEscuelaPorFacultad", ReplyAction:="http://tempuri.org/IController/TraeEscuelaPorFacultadResponse")>  _
        Function TraeEscuelaPorFacultad(ByVal idFacultad As Integer) As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeEscuelaPorFacultad", ReplyAction:="http://tempuri.org/IController/TraeEscuelaPorFacultadResponse")>  _
        Function TraeEscuelaPorFacultadAsync(ByVal idFacultad As Integer) As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorEscuela", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorEscuelaResponse")>  _
        Function TraeCarreraPorEscuela(ByVal idEscuela As Integer) As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorEscuela", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorEscuelaResponse")>  _
        Function TraeCarreraPorEscuelaAsync(ByVal idEscuela As Integer) As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeHistorialPorCarrera", ReplyAction:="http://tempuri.org/IController/TraeHistorialPorCarreraResponse")>  _
        Function TraeHistorialPorCarrera(ByVal idCarrera As Integer) As Models.HistorialCurricular()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeHistorialPorCarrera", ReplyAction:="http://tempuri.org/IController/TraeHistorialPorCarreraResponse")>  _
        Function TraeHistorialPorCarreraAsync(ByVal idCarrera As Integer) As System.Threading.Tasks.Task(Of Models.HistorialCurricular())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeAsignaturasPorHistorial", ReplyAction:="http://tempuri.org/IController/TraeAsignaturasPorHistorialResponse")>  _
        Function TraeAsignaturasPorHistorial(ByVal idHistorial As Integer) As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeAsignaturasPorHistorial", ReplyAction:="http://tempuri.org/IController/TraeAsignaturasPorHistorialResponse")>  _
        Function TraeAsignaturasPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/TraeResolucionPorHistorialResponse")>  _
        Function TraeResolucionPorHistorial(ByVal idHistorial As Integer) As Models.Resoluciones()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/TraeResolucionPorHistorialResponse")>  _
        Function TraeResolucionPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.Resoluciones())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraePlan", ReplyAction:="http://tempuri.org/IController/TraePlanResponse")>  _
        Function TraePlan() As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraePlan", ReplyAction:="http://tempuri.org/IController/TraePlanResponse")>  _
        Function TraePlanAsync() As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorPlan", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorPlanResponse")>  _
        Function TraeCarreraPorPlan(ByVal idPlan As Integer) As Models.Parametros()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorPlan", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorPlanResponse")>  _
        Function TraeCarreraPorPlanAsync(ByVal idPlan As Integer) As System.Threading.Tasks.Task(Of Models.Parametros())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeAsignatura", ReplyAction:="http://tempuri.org/IController/TraeAsignaturaResponse")>  _
        Function TraeAsignatura() As Models.Asignaturas()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeAsignatura", ReplyAction:="http://tempuri.org/IController/TraeAsignaturaResponse")>  _
        Function TraeAsignaturaAsync() As System.Threading.Tasks.Task(Of Models.Asignaturas())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarHistorial", ReplyAction:="http://tempuri.org/IController/GuardarHistorialResponse")>  _
        Function GuardarHistorial(ByVal Historial As Models.HistorialCurricular) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarHistorial", ReplyAction:="http://tempuri.org/IController/GuardarHistorialResponse")>  _
        Function GuardarHistorialAsync(ByVal Historial As Models.HistorialCurricular) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarAsignaturaPorHistorial", ReplyAction:="http://tempuri.org/IController/GuardarAsignaturaPorHistorialResponse")>  _
        Function GuardarAsignaturaPorHistorial(ByVal idHistorial As Integer, ByVal idAsignatura As String) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarAsignaturaPorHistorial", ReplyAction:="http://tempuri.org/IController/GuardarAsignaturaPorHistorialResponse")>  _
        Function GuardarAsignaturaPorHistorialAsync(ByVal idHistorial As Integer, ByVal idAsignatura As String) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeResoluciones", ReplyAction:="http://tempuri.org/IController/TraeResolucionesResponse")>  _
        Function TraeResoluciones() As Models.Resoluciones()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeResoluciones", ReplyAction:="http://tempuri.org/IController/TraeResolucionesResponse")>  _
        Function TraeResolucionesAsync() As System.Threading.Tasks.Task(Of Models.Resoluciones())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/GuardarResolucionPorHistorialResponse")>  _
        Function GuardarResolucionPorHistorial(ByVal idHistorial As Integer, ByVal nomResolucion As String, ByVal pathResolucion As String) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/GuardarResolucionPorHistorialResponse")>  _
        Function GuardarResolucionPorHistorialAsync(ByVal idHistorial As Integer, ByVal nomResolucion As String, ByVal pathResolucion As String) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeHistorialPorId", ReplyAction:="http://tempuri.org/IController/TraeHistorialPorIdResponse")>  _
        Function TraeHistorialPorId(ByVal idHistorial As Integer) As Models.HistorialCurricular()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeHistorialPorId", ReplyAction:="http://tempuri.org/IController/TraeHistorialPorIdResponse")>  _
        Function TraeHistorialPorIdAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.HistorialCurricular())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarHistorial", ReplyAction:="http://tempuri.org/IController/EliminarHistorialResponse")>  _
        Function EliminarHistorial(ByVal idHistorial As Integer) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarHistorial", ReplyAction:="http://tempuri.org/IController/EliminarHistorialResponse")>  _
        Function EliminarHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ActualizarHistorial", ReplyAction:="http://tempuri.org/IController/ActualizarHistorialResponse")>  _
        Function ActualizarHistorial(ByVal Historial As Models.HistorialCurricular) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ActualizarHistorial", ReplyAction:="http://tempuri.org/IController/ActualizarHistorialResponse")>  _
        Function ActualizarHistorialAsync(ByVal Historial As Models.HistorialCurricular) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarAsignaturasPorHistorial", ReplyAction:="http://tempuri.org/IController/EliminarAsignaturasPorHistorialResponse")>  _
        Function EliminarAsignaturasPorHistorial(ByVal idHistorial As Integer) As Models.LogNapoli()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarAsignaturasPorHistorial", ReplyAction:="http://tempuri.org/IController/EliminarAsignaturasPorHistorialResponse")>  _
        Function EliminarAsignaturasPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/EliminarResolucionPorHistorialResponse")>  _
        Function EliminarResolucionPorHistorial(ByVal idHistorial As Integer) As Models.LogNapoli()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarResolucionPorHistorial", ReplyAction:="http://tempuri.org/IController/EliminarResolucionPorHistorialResponse")>  _
        Function EliminarResolucionPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ValidarUsuario", ReplyAction:="http://tempuri.org/IController/ValidarUsuarioResponse")>  _
        Function ValidarUsuario(ByVal nick As Integer, ByVal pass As String) As Models.Usuario
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ValidarUsuario", ReplyAction:="http://tempuri.org/IController/ValidarUsuarioResponse")>  _
        Function ValidarUsuarioAsync(ByVal nick As Integer, ByVal pass As String) As System.Threading.Tasks.Task(Of Models.Usuario)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeUsuarios", ReplyAction:="http://tempuri.org/IController/TraeUsuariosResponse")>  _
        Function TraeUsuarios() As Models.Usuario()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeUsuarios", ReplyAction:="http://tempuri.org/IController/TraeUsuariosResponse")>  _
        Function TraeUsuariosAsync() As System.Threading.Tasks.Task(Of Models.Usuario())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarUsuario", ReplyAction:="http://tempuri.org/IController/GuardarUsuarioResponse")>  _
        Function GuardarUsuario(ByVal Usuario As Models.Usuario) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/GuardarUsuario", ReplyAction:="http://tempuri.org/IController/GuardarUsuarioResponse")>  _
        Function GuardarUsuarioAsync(ByVal Usuario As Models.Usuario) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/RegistrarLog", ReplyAction:="http://tempuri.org/IController/RegistrarLogResponse")>  _
        Sub RegistrarLog(ByVal log As Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/RegistrarLog", ReplyAction:="http://tempuri.org/IController/RegistrarLogResponse")>  _
        Function RegistrarLogAsync(ByVal log As Models.LogNapoli) As System.Threading.Tasks.Task
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeUsuarioPorRut", ReplyAction:="http://tempuri.org/IController/TraeUsuarioPorRutResponse")>  _
        Function TraeUsuarioPorRut(ByVal rut As Integer) As Models.Usuario
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeUsuarioPorRut", ReplyAction:="http://tempuri.org/IController/TraeUsuarioPorRutResponse")>  _
        Function TraeUsuarioPorRutAsync(ByVal rut As Integer) As System.Threading.Tasks.Task(Of Models.Usuario)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarUsuario", ReplyAction:="http://tempuri.org/IController/EliminarUsuarioResponse")>  _
        Function EliminarUsuario(ByVal Rut As Integer) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/EliminarUsuario", ReplyAction:="http://tempuri.org/IController/EliminarUsuarioResponse")>  _
        Function EliminarUsuarioAsync(ByVal Rut As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli)
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ActualizarUsuario", ReplyAction:="http://tempuri.org/IController/ActualizarUsuarioResponse")>  _
        Function ActualizarUsuario(ByVal Usuario As Models.Usuario) As Models.LogNapoli
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/ActualizarUsuario", ReplyAction:="http://tempuri.org/IController/ActualizarUsuarioResponse")>  _
        Function ActualizarUsuarioAsync(ByVal Usuario As Models.Usuario) As System.Threading.Tasks.Task(Of Models.LogNapoli)
    End Interface
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Public Interface IControllerChannel
        Inherits SrController.IController, System.ServiceModel.IClientChannel
    End Interface
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0")>  _
    Partial Public Class ControllerClient
        Inherits System.ServiceModel.ClientBase(Of SrController.IController)
        Implements SrController.IController
        
        Public Sub New()
            MyBase.New
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String)
            MyBase.New(endpointConfigurationName)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As String)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal endpointConfigurationName As String, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(endpointConfigurationName, remoteAddress)
        End Sub
        
        Public Sub New(ByVal binding As System.ServiceModel.Channels.Binding, ByVal remoteAddress As System.ServiceModel.EndpointAddress)
            MyBase.New(binding, remoteAddress)
        End Sub
        
        Public Function TraeFacultad() As Models.Parametros() Implements SrController.IController.TraeFacultad
            Return MyBase.Channel.TraeFacultad
        End Function
        
        Public Function TraeFacultadAsync() As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraeFacultadAsync
            Return MyBase.Channel.TraeFacultadAsync
        End Function
        
        Public Function TraeEscuelaPorFacultad(ByVal idFacultad As Integer) As Models.Parametros() Implements SrController.IController.TraeEscuelaPorFacultad
            Return MyBase.Channel.TraeEscuelaPorFacultad(idFacultad)
        End Function
        
        Public Function TraeEscuelaPorFacultadAsync(ByVal idFacultad As Integer) As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraeEscuelaPorFacultadAsync
            Return MyBase.Channel.TraeEscuelaPorFacultadAsync(idFacultad)
        End Function
        
        Public Function TraeCarreraPorEscuela(ByVal idEscuela As Integer) As Models.Parametros() Implements SrController.IController.TraeCarreraPorEscuela
            Return MyBase.Channel.TraeCarreraPorEscuela(idEscuela)
        End Function
        
        Public Function TraeCarreraPorEscuelaAsync(ByVal idEscuela As Integer) As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraeCarreraPorEscuelaAsync
            Return MyBase.Channel.TraeCarreraPorEscuelaAsync(idEscuela)
        End Function
        
        Public Function TraeHistorialPorCarrera(ByVal idCarrera As Integer) As Models.HistorialCurricular() Implements SrController.IController.TraeHistorialPorCarrera
            Return MyBase.Channel.TraeHistorialPorCarrera(idCarrera)
        End Function
        
        Public Function TraeHistorialPorCarreraAsync(ByVal idCarrera As Integer) As System.Threading.Tasks.Task(Of Models.HistorialCurricular()) Implements SrController.IController.TraeHistorialPorCarreraAsync
            Return MyBase.Channel.TraeHistorialPorCarreraAsync(idCarrera)
        End Function
        
        Public Function TraeAsignaturasPorHistorial(ByVal idHistorial As Integer) As Models.Parametros() Implements SrController.IController.TraeAsignaturasPorHistorial
            Return MyBase.Channel.TraeAsignaturasPorHistorial(idHistorial)
        End Function
        
        Public Function TraeAsignaturasPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraeAsignaturasPorHistorialAsync
            Return MyBase.Channel.TraeAsignaturasPorHistorialAsync(idHistorial)
        End Function
        
        Public Function TraeResolucionPorHistorial(ByVal idHistorial As Integer) As Models.Resoluciones() Implements SrController.IController.TraeResolucionPorHistorial
            Return MyBase.Channel.TraeResolucionPorHistorial(idHistorial)
        End Function
        
        Public Function TraeResolucionPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.Resoluciones()) Implements SrController.IController.TraeResolucionPorHistorialAsync
            Return MyBase.Channel.TraeResolucionPorHistorialAsync(idHistorial)
        End Function
        
        Public Function TraePlan() As Models.Parametros() Implements SrController.IController.TraePlan
            Return MyBase.Channel.TraePlan
        End Function
        
        Public Function TraePlanAsync() As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraePlanAsync
            Return MyBase.Channel.TraePlanAsync
        End Function
        
        Public Function TraeCarreraPorPlan(ByVal idPlan As Integer) As Models.Parametros() Implements SrController.IController.TraeCarreraPorPlan
            Return MyBase.Channel.TraeCarreraPorPlan(idPlan)
        End Function
        
        Public Function TraeCarreraPorPlanAsync(ByVal idPlan As Integer) As System.Threading.Tasks.Task(Of Models.Parametros()) Implements SrController.IController.TraeCarreraPorPlanAsync
            Return MyBase.Channel.TraeCarreraPorPlanAsync(idPlan)
        End Function
        
        Public Function TraeAsignatura() As Models.Asignaturas() Implements SrController.IController.TraeAsignatura
            Return MyBase.Channel.TraeAsignatura
        End Function
        
        Public Function TraeAsignaturaAsync() As System.Threading.Tasks.Task(Of Models.Asignaturas()) Implements SrController.IController.TraeAsignaturaAsync
            Return MyBase.Channel.TraeAsignaturaAsync
        End Function
        
        Public Function GuardarHistorial(ByVal Historial As Models.HistorialCurricular) As Models.LogNapoli Implements SrController.IController.GuardarHistorial
            Return MyBase.Channel.GuardarHistorial(Historial)
        End Function
        
        Public Function GuardarHistorialAsync(ByVal Historial As Models.HistorialCurricular) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.GuardarHistorialAsync
            Return MyBase.Channel.GuardarHistorialAsync(Historial)
        End Function
        
        Public Function GuardarAsignaturaPorHistorial(ByVal idHistorial As Integer, ByVal idAsignatura As String) As Models.LogNapoli Implements SrController.IController.GuardarAsignaturaPorHistorial
            Return MyBase.Channel.GuardarAsignaturaPorHistorial(idHistorial, idAsignatura)
        End Function
        
        Public Function GuardarAsignaturaPorHistorialAsync(ByVal idHistorial As Integer, ByVal idAsignatura As String) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.GuardarAsignaturaPorHistorialAsync
            Return MyBase.Channel.GuardarAsignaturaPorHistorialAsync(idHistorial, idAsignatura)
        End Function
        
        Public Function TraeResoluciones() As Models.Resoluciones() Implements SrController.IController.TraeResoluciones
            Return MyBase.Channel.TraeResoluciones
        End Function
        
        Public Function TraeResolucionesAsync() As System.Threading.Tasks.Task(Of Models.Resoluciones()) Implements SrController.IController.TraeResolucionesAsync
            Return MyBase.Channel.TraeResolucionesAsync
        End Function
        
        Public Function GuardarResolucionPorHistorial(ByVal idHistorial As Integer, ByVal nomResolucion As String, ByVal pathResolucion As String) As Models.LogNapoli Implements SrController.IController.GuardarResolucionPorHistorial
            Return MyBase.Channel.GuardarResolucionPorHistorial(idHistorial, nomResolucion, pathResolucion)
        End Function
        
        Public Function GuardarResolucionPorHistorialAsync(ByVal idHistorial As Integer, ByVal nomResolucion As String, ByVal pathResolucion As String) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.GuardarResolucionPorHistorialAsync
            Return MyBase.Channel.GuardarResolucionPorHistorialAsync(idHistorial, nomResolucion, pathResolucion)
        End Function
        
        Public Function TraeHistorialPorId(ByVal idHistorial As Integer) As Models.HistorialCurricular() Implements SrController.IController.TraeHistorialPorId
            Return MyBase.Channel.TraeHistorialPorId(idHistorial)
        End Function
        
        Public Function TraeHistorialPorIdAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.HistorialCurricular()) Implements SrController.IController.TraeHistorialPorIdAsync
            Return MyBase.Channel.TraeHistorialPorIdAsync(idHistorial)
        End Function
        
        Public Function EliminarHistorial(ByVal idHistorial As Integer) As Models.LogNapoli Implements SrController.IController.EliminarHistorial
            Return MyBase.Channel.EliminarHistorial(idHistorial)
        End Function
        
        Public Function EliminarHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.EliminarHistorialAsync
            Return MyBase.Channel.EliminarHistorialAsync(idHistorial)
        End Function
        
        Public Function ActualizarHistorial(ByVal Historial As Models.HistorialCurricular) As Models.LogNapoli Implements SrController.IController.ActualizarHistorial
            Return MyBase.Channel.ActualizarHistorial(Historial)
        End Function
        
        Public Function ActualizarHistorialAsync(ByVal Historial As Models.HistorialCurricular) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.ActualizarHistorialAsync
            Return MyBase.Channel.ActualizarHistorialAsync(Historial)
        End Function
        
        Public Function EliminarAsignaturasPorHistorial(ByVal idHistorial As Integer) As Models.LogNapoli() Implements SrController.IController.EliminarAsignaturasPorHistorial
            Return MyBase.Channel.EliminarAsignaturasPorHistorial(idHistorial)
        End Function
        
        Public Function EliminarAsignaturasPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli()) Implements SrController.IController.EliminarAsignaturasPorHistorialAsync
            Return MyBase.Channel.EliminarAsignaturasPorHistorialAsync(idHistorial)
        End Function
        
        Public Function EliminarResolucionPorHistorial(ByVal idHistorial As Integer) As Models.LogNapoli() Implements SrController.IController.EliminarResolucionPorHistorial
            Return MyBase.Channel.EliminarResolucionPorHistorial(idHistorial)
        End Function
        
        Public Function EliminarResolucionPorHistorialAsync(ByVal idHistorial As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli()) Implements SrController.IController.EliminarResolucionPorHistorialAsync
            Return MyBase.Channel.EliminarResolucionPorHistorialAsync(idHistorial)
        End Function
        
        Public Function ValidarUsuario(ByVal nick As Integer, ByVal pass As String) As Models.Usuario Implements SrController.IController.ValidarUsuario
            Return MyBase.Channel.ValidarUsuario(nick, pass)
        End Function
        
        Public Function ValidarUsuarioAsync(ByVal nick As Integer, ByVal pass As String) As System.Threading.Tasks.Task(Of Models.Usuario) Implements SrController.IController.ValidarUsuarioAsync
            Return MyBase.Channel.ValidarUsuarioAsync(nick, pass)
        End Function
        
        Public Function TraeUsuarios() As Models.Usuario() Implements SrController.IController.TraeUsuarios
            Return MyBase.Channel.TraeUsuarios
        End Function
        
        Public Function TraeUsuariosAsync() As System.Threading.Tasks.Task(Of Models.Usuario()) Implements SrController.IController.TraeUsuariosAsync
            Return MyBase.Channel.TraeUsuariosAsync
        End Function
        
        Public Function GuardarUsuario(ByVal Usuario As Models.Usuario) As Models.LogNapoli Implements SrController.IController.GuardarUsuario
            Return MyBase.Channel.GuardarUsuario(Usuario)
        End Function
        
        Public Function GuardarUsuarioAsync(ByVal Usuario As Models.Usuario) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.GuardarUsuarioAsync
            Return MyBase.Channel.GuardarUsuarioAsync(Usuario)
        End Function
        
        Public Sub RegistrarLog(ByVal log As Models.LogNapoli) Implements SrController.IController.RegistrarLog
            MyBase.Channel.RegistrarLog(log)
        End Sub
        
        Public Function RegistrarLogAsync(ByVal log As Models.LogNapoli) As System.Threading.Tasks.Task Implements SrController.IController.RegistrarLogAsync
            Return MyBase.Channel.RegistrarLogAsync(log)
        End Function
        
        Public Function TraeUsuarioPorRut(ByVal rut As Integer) As Models.Usuario Implements SrController.IController.TraeUsuarioPorRut
            Return MyBase.Channel.TraeUsuarioPorRut(rut)
        End Function
        
        Public Function TraeUsuarioPorRutAsync(ByVal rut As Integer) As System.Threading.Tasks.Task(Of Models.Usuario) Implements SrController.IController.TraeUsuarioPorRutAsync
            Return MyBase.Channel.TraeUsuarioPorRutAsync(rut)
        End Function
        
        Public Function EliminarUsuario(ByVal Rut As Integer) As Models.LogNapoli Implements SrController.IController.EliminarUsuario
            Return MyBase.Channel.EliminarUsuario(Rut)
        End Function
        
        Public Function EliminarUsuarioAsync(ByVal Rut As Integer) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.EliminarUsuarioAsync
            Return MyBase.Channel.EliminarUsuarioAsync(Rut)
        End Function
        
        Public Function ActualizarUsuario(ByVal Usuario As Models.Usuario) As Models.LogNapoli Implements SrController.IController.ActualizarUsuario
            Return MyBase.Channel.ActualizarUsuario(Usuario)
        End Function
        
        Public Function ActualizarUsuarioAsync(ByVal Usuario As Models.Usuario) As System.Threading.Tasks.Task(Of Models.LogNapoli) Implements SrController.IController.ActualizarUsuarioAsync
            Return MyBase.Channel.ActualizarUsuarioAsync(Usuario)
        End Function
    End Class
End Namespace
