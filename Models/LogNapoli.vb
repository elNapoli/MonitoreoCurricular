Public Class LogNapoli
    Property CodigoError As String
    Property mensajeError As String
    Property fecha As String
    Property Rut As String
    Property origenError As String
    Property idObjetos As Integer

    Public Function imprimirLog() As String

        Return "Codigo de Error:" + CodigoError +
                ", Mensaje de Error:" + mensajeError +
                ", Fecha:" + fecha +
                ", Rut:" + Rut +
                ", Origen:" + origenError +
                ", idObjetos:" + idObjetos.ToString
    End Function

End Class
