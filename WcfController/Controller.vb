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
        Dim ret As New List(Of Parametros)
        Try
            dr = cnn.Ejecuta("getFacultad") ' colocar nombre del procedimiento


            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next

        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeFacultad"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try
        Return ret.AsEnumerable
    End Function
    Public Function TraeEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of Parametros) Implements IController.TraeEscuelaPorFacultad
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of Parametros)

        Parametros.Add(New Parameter With {.Nombre = "@idFacultad", .Valor = idFacultad, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getEscuelaByFacultad", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeEscuelaPorFacultad"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function

    Public Function TraeCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of Parametros) Implements IController.TraeCarreraPorEscuela
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of Parametros)
        Parametros.Add(New Parameter With {.Nombre = "@idEscuela", .Valor = idEscuela, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getCarreraByEscuela", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeCarreraPorEscuela"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try


        Return ret.AsEnumerable
    End Function


    Public Function TraeHistorialPorCarrera(idCarrera As Integer) As IEnumerable(Of HistorialCurricular) Implements IController.TraeHistorialPorCarrera
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of HistorialCurricular)
        Parametros.Add(New Parameter With {.Nombre = "@idCarrera", .Valor = idCarrera, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getHistorialByCarrera", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

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
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeHistorialPorCarrera"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function


    Public Function TraeAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of Parametros) Implements IController.TraeAsignaturasPorHistorial
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of Parametros)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getAsignaturasByHistorial", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeAsignaturasPorHistorial"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function


    Public Function TraeResolucionPorHistorial(idHistorial As Integer) As IEnumerable(Of Resoluciones) Implements IController.TraeResolucionPorHistorial
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of Resoluciones)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getResolucionByHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Resoluciones With {
                        .id = item(0),
                        .nombre = item(1),
                        .path = item(2)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeResolucionPorHistorial"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try


        Return ret.AsEnumerable
    End Function

    Public Function TraePlan() As IEnumerable(Of Parametros) Implements IController.TraePlan
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim ret As New List(Of Parametros)
        Try
            dr = cnn.Ejecuta("getPlan") ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraePlan"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function


    Public Function TraeCarreraPorPlan(idPlan As Integer) As IEnumerable(Of Parametros) Implements IController.TraeCarreraPorPlan
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of Parametros)
        Parametros.Add(New Parameter With {.Nombre = "@idPlan", .Valor = idPlan, .Tipo = Parameter.TypeDB.DbInt})
        Try
            dr = cnn.Ejecuta("getCarreraByPlan", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Parametros With {
                        .id = item(0),
                        .nombre = item(1)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeCarreraPorPlan"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try


        Return ret.AsEnumerable
    End Function


    Public Function TraeAsignatura() As IEnumerable(Of Asignaturas) Implements IController.TraeAsignatura
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim ret As New List(Of Asignaturas)
        Try
            dr = cnn.Ejecuta("getAsignatura") ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Asignaturas With {
                        .idAsignatura = item(0),
                        .nomAsignatura = item(1),
                        .nomInstituto = item(2)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeAsignatura"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function


    Public Function GuardarHistorial(Historial As HistorialCurricular) As LogNapoli Implements IController.GuardarHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Parametros.Add(New Parameter With {.Nombre = "@idPlan", .Valor = Historial.idPlan, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idCarrera", .Valor = Historial.idCarrera, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@fechaResolucion", .Valor = Historial.fecha, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@hito", .Valor = Historial.hito, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@descripcion", .Valor = Historial.descripcion, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@antes", .Valor = Historial.antes, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@despues", .Valor = Historial.despues, .Tipo = Parameter.TypeDB.DbVarchar})



        Try
            dr = cnn.Ejecuta("setHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = "1",
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/GuardarHistorial",
                        .idObjetos = item(0)
                    }

            Next

            Return ret
        Catch ex As Exception

            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/GuardarHistorial"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try




    End Function


    Public Function GuardarAsignaturaPorHistorial(idHistorial As Integer, idAsignatura As String) As LogNapoli Implements IController.GuardarAsignaturaPorHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing

        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idAsignatura", .Valor = idAsignatura, .Tipo = Parameter.TypeDB.DbVarchar})


        Try
            dr = cnn.Ejecuta("setAsignaturaByHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/GuardarAsignaturaPorHistorial"
                    }

            Next

            Return ret
        Catch ex As Exception
            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/GuardarAsignaturaPorHistorial"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try



    End Function


    Public Function TraeResoluciones() As IEnumerable(Of Resoluciones) Implements IController.TraeResoluciones
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim ret As New List(Of Resoluciones)
        Try
            dr = cnn.Ejecuta("getDetalleResoluciones") ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

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
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeResoluciones"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

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
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/GuardarResolucionPorHistorial"
            logError.Rut = "0"
            RegistrarLog(logError)
            retorno = logError.CodigoError
            MsgBox(logError.mensajeError)
        End Try



    End Sub


    Public Function TraeHistorialPorId(idHistorial As Integer) As IEnumerable(Of HistorialCurricular) Implements IController.TraeHistorialPorId
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim Parametros As New List(Of Parameter)
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})
        Dim ret As New List(Of HistorialCurricular)
        Try
            dr = cnn.Ejecuta("getHistorialById", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

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
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeHistorialPorId"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable
    End Function



    Public Function EliminarHistorial(idHistorial As Integer) As LogNapoli Implements IController.EliminarHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing

        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})

        Try

            dr = cnn.Ejecuta("delHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/EliminarHistorial"
                    }

            Next

            Return ret
        Catch ex As Exception
            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/GuardarHistorial"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret

        End Try



    End Function



    Public Function ActualizarHistorial(Historial As HistorialCurricular) As LogNapoli Implements IController.ActualizarHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing


        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = Historial.id, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idPlan", .Valor = Historial.idPlan, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@idCarrera", .Valor = Historial.idCarrera, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@fechaRes", .Valor = Historial.fecha, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@hito", .Valor = Historial.hito, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@descripcion", .Valor = Historial.descripcion, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@antes", .Valor = Historial.antes, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@despues", .Valor = Historial.despues, .Tipo = Parameter.TypeDB.DbVarchar})




        Try
            dr = cnn.Ejecuta("UpdateHisotiral", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/ActualizarHistorial"
                    }

            Next

            Return ret


        Catch ex As Exception
            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/ActualizarHistorial"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try



    End Function



    Public Function EliminarAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of LogNapoli) Implements IController.EliminarAsignaturasPorHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of LogNapoli)
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})


        Try

            dr = cnn.Ejecuta("delAsignaturasByHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret.Add(New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/EliminarAsignaturasPorHistorial"
                    })

            Next

            Return ret

        Catch ex As Exception
            ret.Add(New LogNapoli With {
                        .CodigoError = "-2",
            .mensajeError = ex.Message.ToString,
            .fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"),
            .origenError = "Controller/EliminarAsignaturasPorHistorial",
            .Rut = "0"
        })
            MsgBox(ret(0).mensajeError)
            Return ret
        End Try



    End Function

    Public Function EliminarResolucionPorHistorial(idHistorial As Integer) As IEnumerable(Of LogNapoli) Implements IController.EliminarResolucionPorHistorial
        Dim Parametros As New List(Of Parameter)
        Dim ret As New List(Of LogNapoli)
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Parametros.Add(New Parameter With {.Nombre = "@idHistorial", .Valor = idHistorial, .Tipo = Parameter.TypeDB.DbInt})


        Try

            dr = cnn.Ejecuta("delResolucionByHistorial", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr
                ret.Add(New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/EliminarResolucionPorHistorial"
                    })

            Next

            Return ret

        Catch ex As Exception
            ret.Add(New LogNapoli With {
                        .CodigoError = "-2",
            .mensajeError = ex.Message.ToString,
            .fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss"),
            .origenError = "Controller/EliminarResolucionPorHistorial",
            .Rut = "0"
        })
            MsgBox(ret(0).mensajeError)
            Return ret
        End Try



    End Function



    Public Function ValidarUsuario(nick As Integer, pass As String) As Usuario Implements IController.ValidarUsuario
        Dim Parametros As New List(Of Parameter)

        Parametros.Add(New Parameter With {.Nombre = "@Username", .Valor = nick, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@Password", .Valor = pass, .Tipo = Parameter.TypeDB.DbVarchar})
        Dim ret As New Usuario
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("validarUsuario", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret = New Usuario With {
                        .Rut = item(0),
                        .Nombre = item(1),
                        .Rol = item(2)
                    }

            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/ValidarUsuario"
            logError.Rut = "0"
            RegistrarLog(logError)

            MsgBox(logError.mensajeError)
        End Try

        Return ret



    End Function



    Public Function TraeUsuarios() As IEnumerable(Of Usuario) Implements IController.TraeUsuarios
        Dim dr As IEnumerable(Of DataRow) = Nothing
        Dim ret As New List(Of Usuario)
        Try
            dr = cnn.Ejecuta("getUsuarios") ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret.Add(New Usuario With {
                        .Rut = item(0),
                        .Nombre = item(1),
                        .apPaterno = item(2),
                        .apMaterno = item(3),
                        .email = item(4),
                        .Rol = item(5)
                    }
                )
            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeUsuarios"
            logError.Rut = "0"
            RegistrarLog(logError)

            MsgBox(logError.mensajeError)
        End Try

        Return ret.AsEnumerable


    End Function


    Public Function GuardarUsuario(Usuario As Usuario) As LogNapoli Implements IController.GuardarUsuario
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing

        Parametros.Add(New Parameter With {.Nombre = "@Rut", .Valor = Usuario.Rut, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@Nombre", .Valor = Usuario.Nombre, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@apPaterno", .Valor = Usuario.apPaterno, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@apMaterno", .Valor = Usuario.apMaterno, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@pass", .Valor = Usuario.password, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@Email", .Valor = Usuario.email, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@Rol", .Valor = Usuario.Rol, .Tipo = Parameter.TypeDB.DbVarchar})
        Dim retorno As Integer = 0



        Try
            dr = cnn.Ejecuta("setUsuario", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/GuardarUsuario"
                    }

            Next

            Return ret


        Catch ex As Exception
            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/GuardarUsuario"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try




    End Function


    Public Function TraeUsuarioPorRut(Rut As Integer) As Usuario Implements IController.TraeUsuarioPorRut
        Dim Parametros As New List(Of Parameter)

        Dim ret As New Usuario
        Parametros.Add(New Parameter With {.Nombre = "@Rut", .Valor = Rut, .Tipo = Parameter.TypeDB.DbInt})

        Dim dr As IEnumerable(Of DataRow) = Nothing
        Try
            dr = cnn.Ejecuta("getUsuarioByRut", Parametros) ' colocar nombre del procedimiento

            If dr Is Nothing Then Throw New Exception("La función a valor")

            'Tipos
            For Each item As DataRow In dr


                ret = New Usuario With {
                        .Rut = Rut,
                        .Nombre = item(0),
                        .apPaterno = item(1),
                        .apMaterno = item(2),
                        .email = item(3),
                        .Rol = item(4)
                    }

            Next
        Catch ex As Exception
            Dim logError As New LogNapoli

            logError.CodigoError = "-2"
            logError.mensajeError = ex.Message.ToString
            logError.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            logError.origenError = "Controller/TraeUsuarioPorRut"
            logError.Rut = "0"
            RegistrarLog(logError)
            MsgBox(logError.mensajeError)
        End Try

        Return ret



    End Function



    Public Function EliminarUsuario(Rut As Integer) As LogNapoli Implements IController.EliminarUsuario
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing

        Parametros.Add(New Parameter With {.Nombre = "@Rut", .Valor = Rut, .Tipo = Parameter.TypeDB.DbInt})


        Try
            dr = cnn.Ejecuta("delUsuario", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = item(0),
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/EliminarUsuario"
                    }

            Next

            Return ret
        Catch ex As Exception
            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/EliminarUsuario"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try



    End Function

    Public Function ActualizarUsuario(Usuario As Usuario) As LogNapoli Implements IController.ActualizarUsuario
        Dim Parametros As New List(Of Parameter)
        Dim ret As New LogNapoli
        Dim dr As IEnumerable(Of DataRow) = Nothing

        Parametros.Add(New Parameter With {.Nombre = "@rut", .Valor = Usuario.Rut, .Tipo = Parameter.TypeDB.DbInt})
        Parametros.Add(New Parameter With {.Nombre = "@Nombre", .Valor = Usuario.Nombre, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@ApPaterno", .Valor = Usuario.apPaterno, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@ApMaterno", .Valor = Usuario.apMaterno, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@email", .Valor = Usuario.email, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@rol", .Valor = Usuario.Rol, .Tipo = Parameter.TypeDB.DbInt})




        Try

            dr = cnn.Ejecuta("UpdateUsuario", Parametros) ' colocar nombre del procedimiento
            If dr Is Nothing Then Throw New Exception("La función a valor")
            For Each item As DataRow In dr


                ret = New LogNapoli With {
                        .CodigoError = "1",
                        .mensajeError = item(1),
                        .fecha = item(2),
                        .origenError = "Controller/ActualizarUsuario",
                        .idObjetos = item(0)
                    }

            Next

            Return ret


        Catch ex As Exception

            ret.CodigoError = "-2"
            ret.mensajeError = ex.Message.ToString
            ret.fecha = System.DateTime.Now.ToString("dd/MM/yyyy HH:mm:ss")
            ret.origenError = "Controller/ActualizarUsuario"
            ret.Rut = "0"
            MsgBox(ret.mensajeError)
            Return ret
        End Try


    End Function


    Public Sub RegistrarLog(log As LogNapoli) Implements IController.RegistrarLog
        Dim Parametros As New List(Of Parameter)
        Dim retorno As Integer = 0
        Parametros.Add(New Parameter With {.Nombre = "@codigo", .Valor = log.CodigoError, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@Mensaje", .Valor = log.mensajeError, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@Fecha", .Valor = log.fecha, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@rut", .Valor = log.Rut, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@origen", .Valor = log.origenError, .Tipo = Parameter.TypeDB.DbVarchar})
        Parametros.Add(New Parameter With {.Nombre = "@idObjetos", .Valor = log.idObjetos, .Tipo = Parameter.TypeDB.DbInt})



        Try
            retorno = CInt(cnn.EjecutaScalar("setLog", Parametros))

        Catch ex As Exception
            MsgBox("Faltal Error: " + ex.Message + "!!!")
        End Try



    End Sub
End Class
