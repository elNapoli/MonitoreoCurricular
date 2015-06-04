' NOTA: puede usar el comando "Cambiar nombre" del menú contextual para cambiar el nombre de interfaz "IService1" en el código y en el archivo de configuración a la vez.
Imports Models
<ServiceContract()>
Public Interface IController


    <OperationContract()>
    Function TraeFacultad() As IEnumerable(Of Facultad)

    <OperationContract()>
    Function TraeEscuelaPorFacultad(idFacultad As Integer) As IEnumerable(Of Facultad)

    <OperationContract()>
    Function TraeCarreraPorEscuela(idEscuela As Integer) As IEnumerable(Of Facultad)
End Interface