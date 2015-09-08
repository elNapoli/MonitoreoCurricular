Public Class Usuario
    Property Rut As Integer
    Property Nombre As String
    Property Rol As String
    Property apPaterno As String
    Property apMaterno As String
    Property email As String
    Property password As String
    Public Sub New()

    End Sub

    Public Sub New(Rut As Integer, Nombre As String, Rol As String, apPaterno As String, apMaterno As String, email As String, password As String)
        Me.Rut = Rut
        Me.Nombre = Nombre
        Me.Rol = Rol
        Me.apPaterno = apPaterno
        Me.apMaterno = apMaterno
        Me.email = email
        Me.password = password
    End Sub

    Public Sub New(Rut As Integer, Nombre As String, Rol As String, apPaterno As String, apMaterno As String, email As String)
        Me.Rut = Rut
        Me.Nombre = Nombre
        Me.Rol = Rol
        Me.apPaterno = apPaterno
        Me.apMaterno = apMaterno
        Me.email = email
    End Sub
End Class
