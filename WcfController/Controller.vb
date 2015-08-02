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
            MsgBox(ex.Message)
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
            MsgBox(ex.Message)
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
            MsgBox(ex.Message)
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
            MsgBox(ex.Message)
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
            MsgBox(ex.Message)
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


    Public Function TraeResolucionPorHistorial(idHistorial As Integer) As IEnumerable(Of Resoluciones) Implements IController.TraeResolucionPorHistorial
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getResolucionByHistorial", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Resoluciones)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Resoluciones With {
                    .id = item(0),
                    .nombre = item(1),
                    .path = item(2)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function

    Public Function TraePlan() As IEnumerable(Of Parametros) Implements IController.TraePlan
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("getPlan") ' colocar nombre del procedimiento

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


    Public Function TraeCarreraPorPlan(idPlan As Integer) As IEnumerable(Of Parametros) Implements IController.TraeCarreraPorPlan
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idPlan", .Valor = idPlan, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getCarreraByPlan", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            MsgBox(ex.Message)
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


    Public Function TraeAsignatura() As IEnumerable(Of Asignaturas) Implements IController.TraeAsignatura
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("getAsignatura") ' colocar nombre del procedimiento

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Asignaturas)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Asignaturas With {
                    .idAsignatura = item(0),
                    .nomAsignatura = item(1),
                    .nomInstituto = item(2)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function


    Public Function GuardarHistorial(Historial As HistorialCurricular) As Integer Implements IController.GuardarHistorial
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idPlan", .Valor = Historial.idPlan, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idCarrera", .Valor = Historial.idCarrera, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@fechaResolucion", .Valor = Historial.fecha, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@hito", .Valor = Historial.hito, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@descripcion", .Valor = Historial.descripcion, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@antes", .Valor = Historial.antes, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@despues", .Valor = Historial.despues, .Tipo = Parameter.TypeDB.DbVarchar})
        Dim retorno As Integer = 0



        Try
            retorno = CInt(cnn.EjecutaScalar("setHistorial", Parametros))



        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        Return retorno


    End Function


    Public Sub GuardarAsignaturaPorHistorial(idHistorial As Integer, idAsignatura As String) Implements IController.GuardarAsignaturaPorHistorial
        Dim Parametros As New List(Of Parameter)
        Dim retorno As Integer = 0
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idAsignatura", .Valor = idAsignatura, .Tipo = Parameter.TypeDB.DbVarchar})


        Try
            retorno = CInt(cnn.EjecutaScalar("setAsignaturaByHistorial", Parametros))

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try



    End Sub


    Public Function TraeResoluciones() As IEnumerable(Of Resoluciones) Implements IController.TraeResoluciones
      Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("getDetalleResoluciones") ' colocar nombre del procedimiento

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

        If dr Is Nothing Then Throw New Exception("La función a valor")
        Dim ret As New List(Of Resoluciones)
        'Tipos
        For Each item As DataRow In dr


            ret.Add(New Resoluciones With {
                    .idHistorial = item(0),
                    .idPlan = item(1),
                    .nombreFacultad = item(2),
                    .nombreEscuela = item(3),
                    .nombreCarrera = item(4),
                    .hito = item(5),
                    .nombre = item(6),
                    .path = item(7)
                }
            )
        Next
        Return ret.AsEnumerable
    End Function



    Public Sub GuardarResolucionPorHistorial(idHistorial As Integer, nomResolucion As String, pathResolucion As String) Implements IController.GuardarResolucionPorHistorial
        Dim Parametros As New List(Of Parameter)
        Dim retorno As Integer = 0
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@nomResolucion", .Valor = nomResolucion, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@pathResolucion", .Valor = pathResolucion, .Tipo = Parameter.TypeDB.DbVarchar})


        Try
            retorno = CInt(cnn.EjecutaScalar("setResolucionByHistorial", Parametros))

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try



    End Sub


    Public Function TraeHistorialPorId(idHistorial As Integer) As IEnumerable(Of HistorialCurricular) Implements IController.TraeHistorialPorId
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getHistorialById", Parametros) ' colocar nombre del procedimiento

        Catch ex As Exception
            MsgBox(ex.Message)
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



    Public Sub EliminarHistorial(idHistorial As Integer) Implements IController.EliminarHistorial
        Dim Parametros As New List(Of Parameter)
        Dim retorno As Integer = 0
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})


        Try
            retorno = CInt(cnn.EjecutaScalar("delHistorial", Parametros))

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try



    End Sub



End Class
