﻿'------------------------------------------------------------------------------
' <auto-generated>
'     Este código fue generado por una herramienta.
'     Versión de runtime:4.0.30319.18408
'
'     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
'     se vuelve a generar el código.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On

Imports System
Imports System.Runtime.Serialization

Namespace SrController
    
    <System.Diagnostics.DebuggerStepThroughAttribute(),  _
     System.CodeDom.Compiler.GeneratedCodeAttribute("System.Runtime.Serialization", "4.0.0.0"),  _
     System.Runtime.Serialization.DataContractAttribute(Name:="Facultad", [Namespace]:="http://schemas.datacontract.org/2004/07/Models"),  _
     System.SerializableAttribute()>  _
    Partial Public Class Facultad
        Inherits Object
        Implements System.Runtime.Serialization.IExtensibleDataObject, System.ComponentModel.INotifyPropertyChanged
        
        <System.NonSerializedAttribute()>  _
        Private extensionDataField As System.Runtime.Serialization.ExtensionDataObject
        
        <System.Runtime.Serialization.OptionalFieldAttribute()>  _
        Private idField As String
        
        <System.Runtime.Serialization.OptionalFieldAttribute()>  _
        Private nombreField As String
        
        <Global.System.ComponentModel.BrowsableAttribute(false)>  _
        Public Property ExtensionData() As System.Runtime.Serialization.ExtensionDataObject Implements System.Runtime.Serialization.IExtensibleDataObject.ExtensionData
            Get
                Return Me.extensionDataField
            End Get
            Set
                Me.extensionDataField = value
            End Set
        End Property
        
        <System.Runtime.Serialization.DataMemberAttribute()>  _
        Public Property id() As String
            Get
                Return Me.idField
            End Get
            Set
                If (Object.ReferenceEquals(Me.idField, value) <> true) Then
                    Me.idField = value
                    Me.RaisePropertyChanged("id")
                End If
            End Set
        End Property
        
        <System.Runtime.Serialization.DataMemberAttribute()>  _
        Public Property nombre() As String
            Get
                Return Me.nombreField
            End Get
            Set
                If (Object.ReferenceEquals(Me.nombreField, value) <> true) Then
                    Me.nombreField = value
                    Me.RaisePropertyChanged("nombre")
                End If
            End Set
        End Property
        
        Public Event PropertyChanged As System.ComponentModel.PropertyChangedEventHandler Implements System.ComponentModel.INotifyPropertyChanged.PropertyChanged
        
        Protected Sub RaisePropertyChanged(ByVal propertyName As String)
            Dim propertyChanged As System.ComponentModel.PropertyChangedEventHandler = Me.PropertyChangedEvent
            If (Not (propertyChanged) Is Nothing) Then
                propertyChanged(Me, New System.ComponentModel.PropertyChangedEventArgs(propertyName))
            End If
        End Sub
    End Class
    
    <System.CodeDom.Compiler.GeneratedCodeAttribute("System.ServiceModel", "4.0.0.0"),  _
     System.ServiceModel.ServiceContractAttribute(ConfigurationName:="SrController.IController")>  _
    Public Interface IController
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeFacultad", ReplyAction:="http://tempuri.org/IController/TraeFacultadResponse")>  _
        Function TraeFacultad() As SrController.Facultad()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeFacultad", ReplyAction:="http://tempuri.org/IController/TraeFacultadResponse")>  _
        Function TraeFacultadAsync() As System.Threading.Tasks.Task(Of SrController.Facultad())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeEscuelaPorFacultad", ReplyAction:="http://tempuri.org/IController/TraeEscuelaPorFacultadResponse")>  _
        Function TraeEscuelaPorFacultad(ByVal idFacultad As Integer) As SrController.Facultad()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeEscuelaPorFacultad", ReplyAction:="http://tempuri.org/IController/TraeEscuelaPorFacultadResponse")>  _
        Function TraeEscuelaPorFacultadAsync(ByVal idFacultad As Integer) As System.Threading.Tasks.Task(Of SrController.Facultad())
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorEscuela", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorEscuelaResponse")>  _
        Function TraeCarreraPorEscuela(ByVal idEscuela As Integer) As SrController.Facultad()
        
        <System.ServiceModel.OperationContractAttribute(Action:="http://tempuri.org/IController/TraeCarreraPorEscuela", ReplyAction:="http://tempuri.org/IController/TraeCarreraPorEscuelaResponse")>  _
        Function TraeCarreraPorEscuelaAsync(ByVal idEscuela As Integer) As System.Threading.Tasks.Task(Of SrController.Facultad())
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
        
        Public Function TraeFacultad() As SrController.Facultad() Implements SrController.IController.TraeFacultad
            Return MyBase.Channel.TraeFacultad
        End Function
        
        Public Function TraeFacultadAsync() As System.Threading.Tasks.Task(Of SrController.Facultad()) Implements SrController.IController.TraeFacultadAsync
            Return MyBase.Channel.TraeFacultadAsync
        End Function
        
        Public Function TraeEscuelaPorFacultad(ByVal idFacultad As Integer) As SrController.Facultad() Implements SrController.IController.TraeEscuelaPorFacultad
            Return MyBase.Channel.TraeEscuelaPorFacultad(idFacultad)
        End Function
        
        Public Function TraeEscuelaPorFacultadAsync(ByVal idFacultad As Integer) As System.Threading.Tasks.Task(Of SrController.Facultad()) Implements SrController.IController.TraeEscuelaPorFacultadAsync
            Return MyBase.Channel.TraeEscuelaPorFacultadAsync(idFacultad)
        End Function
        
        Public Function TraeCarreraPorEscuela(ByVal idEscuela As Integer) As SrController.Facultad() Implements SrController.IController.TraeCarreraPorEscuela
            Return MyBase.Channel.TraeCarreraPorEscuela(idEscuela)
        End Function
        
        Public Function TraeCarreraPorEscuelaAsync(ByVal idEscuela As Integer) As System.Threading.Tasks.Task(Of SrController.Facultad()) Implements SrController.IController.TraeCarreraPorEscuelaAsync
            Return MyBase.Channel.TraeCarreraPorEscuelaAsync(idEscuela)
        End Function
    End Class
End Namespace
