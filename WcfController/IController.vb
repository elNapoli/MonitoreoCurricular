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
    Function TraeAsignatura() As IEnumerable(Of Asignaturas)

    <OperationContract()>
    Function GuardarHistorial(Historial As HistorialCurricular) As Integer

    <OperationContract()>
    Sub GuardarAsignaturaPorHistorial(idHistorial As Integer, idAsignatura As String)

    <OperationContract()>
    Function TraeResoluciones() As IEnumerable(Of Resoluciones)

    <OperationContract()>
    Sub GuardarResolucionPorHistorial(idHistorial As Integer, nomResolucion As String, pathResolucion As String)

    <OperationContract()>
    Function TraeHistorialPorId(idHistorial As Integer) As IEnumerable(Of HistorialCurricular)

    <OperationContract()>
    Sub EliminarHistorial(idHistorial As Integer)

    <OperationContract()>
    Sub ActualizarHistorial(Historial As HistorialCurricular)

    <OperationContract()>
    Sub EliminarAsignaturasPorHistorial(idHistorial As Integer)

    <OperationContract()>
    Function ValidarUsuario(nick As Integer, pass As String) As Usuario

End Interface