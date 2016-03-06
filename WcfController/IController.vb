' NOTA: puede usar el comando "Cambiar nombre" del menú contextual para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
Imports Models
<ServiceContract()>
Public Interface IController


    <OperationContract()>
    Function TraeFacultad() As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeHistorialPorCarrera(idCarrera As Integer) As IEnumerable(Of HistorialCurricular)


    <OperationContract()>
    Function TraeAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeResolucionPorHistorial(idHistorial As Integer) As IEnumerable(Of Resoluciones)

    <OperationContract()>
    Function TraePlan() As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeCarreraPorPlan(idPlan As Integer) As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeRol() As IEnumerable(Of Parametros)

    <OperationContract()>
    Function TraeAsignatura() As IEnumerable(Of Asignaturas)

    <OperationContract()>
    Function GuardarHistorial(Historial As HistorialCurricular) As LogNapoli

    <OperationContract()>
    Function GuardarAsignaturaPorHistorial(idHistorial As Integer, idAsignatura As String) As LogNapoli

    <OperationContract()>
    Function TraeResoluciones() As IEnumerable(Of Resoluciones)

    <OperationContract()>
    Function GuardarResolucionPorHistorial(idHistorial As Integer, nomResolucion As String, pathResolucion As String) As LogNapoli

    <OperationContract()>
    Function TraeHistorialPorId(idHistorial As Integer) As IEnumerable(Of HistorialCurricular)

    <OperationContract()>
    Function EliminarHistorial(idHistorial As Integer) As LogNapoli

    <OperationContract()>
    Function ActualizarHistorial(Historial As HistorialCurricular) As LogNapoli

    <OperationContract()>
    Function EliminarAsignaturasPorHistorial(idHistorial As Integer) As IEnumerable(Of LogNapoli)

    <OperationContract()>
    Function EliminarResolucionPorHistorial(idHistorial As Integer) As IEnumerable(Of LogNapoli)

    <OperationContract()>
    Function ValidarUsuario(nick As Integer, pass As String) As Usuario

    <OperationContract()>
    Function TraeUsuarios() As IEnumerable(Of Usuario)

    <OperationContract()>
    Function GuardarUsuario(Usuario As Usuario) As LogNapoli

    <OperationContract()>
    Sub RegistrarLog(log As LogNapoli)

    <OperationContract()>
    Function TraeUsuarioPorRut(rut As Integer) As Usuario

    <OperationContract()>
    Function TrearBitacora() As IEnumerable(Of Bitacora)

    <OperationContract()>
    Function EliminarUsuario(Rut As Integer) As LogNapoli

    <OperationContract()>
    Function ActualizarUsuario(Usuario As Usuario) As LogNapoli

End Interface