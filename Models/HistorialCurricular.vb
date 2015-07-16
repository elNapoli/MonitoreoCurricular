Public Class HistorialCurricular

    Property id As Integer
    Property idPlan As Integer
    Property idCarrera As Integer
    Property fecha As Date
    Property hito As String
    Property descripcion As String
    Property antes As String
    Property despues As String
    Property Resoluciones As Resoluciones()
    Property Asignaturas As Parametros()

    Public Sub New(idPlan As Integer, idCarrera As Integer, fecha As Date, hito As String, descripcion As String, antes As String, despues As String)
        Me.idPlan = idPlan
        Me.idCarrera = idCarrera
        Me.fecha = fecha
        Me.hito = hito
        Me.descripcion = descripcion
        Me.antes = antes
        Me.despues = despues
    End Sub

    Public Sub New()

    End Sub
End Class
