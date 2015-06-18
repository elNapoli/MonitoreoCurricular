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

    Public Function TraeFacultad() As IEnumerable(Of Parametros) Implements IController.TraeFacultad
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("getFacultad") ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Parametros)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Parametros With {
                    .id = item(0),
                    .nombre = item(1)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function
    Public Function TraeEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of Parametros) Implements IController.TraeEscuelaPorFacultad
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idFacultad", .Valor = idFacultad, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getEscuelaByFacultad", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Parametros)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Parametros With {
                    .id = item(0),
                    .nombre = item(1)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function

    Public Function TraeCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of Parametros) Implements IController.TraeCarreraPorEscuela
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idEscuela", .Valor = idEscuela, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getCarreraByEscuela", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Parametros)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Parametros With {
                    .id = item(0),
                    .nombre = item(1)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function


    Public Function TraeHistorialPorCarrera(idCarrera As Integer) As IEnumerable(Of HistorialCurricular) Implements IController.TraeHistorialPorCarrera
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idCarrera", .Valor = idCarrera, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getHistorialByCarrera", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of HistorialCurricular)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New HistorialCurricular With {
                    .id = item(0),
                    .idPlan = item(1),
                    .idCarrera = item(2),
                    .fecha = item(3),
                    .hito = item(4),
                    .descripcion = item(5),
                    .antes = item(6),
                    .despues = item(7)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function


    Public Function TraeAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of Parametros) Implements IController.TraeAsignaturasPorHistorial
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getAsignaturasByHistorial", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            'Throw New FaultException(Of AppError)(New AppError With {.Detalle = ex.Message.ToString})
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Parametros)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Parametros With {
                    .id = item(0),
                    .nombre = item(1)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function
End Class
