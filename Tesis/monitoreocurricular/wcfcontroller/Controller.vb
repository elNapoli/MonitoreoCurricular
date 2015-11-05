Imports Models
Imports Conexion.ConexionFactory
Imports System.Configuration

' NOTA: puede usar el comando "Cambiar nombre" del menú contextual para cambiar el nombre de clase "Service1" en el código y en el archivo de configuración a la vez.
Public Class Controller
    Implements IController

    Private Shared cnn As IConector 'abstract factory   

    Sub New()
        cnn = New Conexion.ConexionFactory.SqlServer.Conector(ConfigurationManager.AppSettings.Get("conexion"))

        Dim ci As System.Globalization.CultureInfo = New Globalization.CultureInfo("es-CL")
        ci.NumberFormat.NumberDecimalDigits = 2
        ci.NumberFormat.NumberDecimalSeparator = ","


        Threading.Thread.CurrentThread.CurrentCulture = ci
        Threading.Thread.CurrentThread.CurrentUICulture = ci
    End Sub

    Public Function TraeFacultad() As IEnumerable(Of Facultad) Implements IController.TraeFacultad
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("TraeFacultad") ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Facultad)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Facultad With {
                    .nombre = item(0)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function
End Class
