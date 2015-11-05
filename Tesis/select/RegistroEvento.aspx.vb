Public Class RegistroEvento1
    Inherits System.Web.UI.Page

    Dim SRC As New SRComunicacion.ComunicacionClient
    Public Shared t As Boolean = True
    Public Shared f As Boolean = False
    Public Shared inserta As Boolean

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Not Page.IsPostBack Then
            DDList1.DataSource = CallInicio()
            If DDList1.Items.Count = 0 Then
                DDList1.Items.Add(New ListItem("--Seleccione Evento--"))
                For Each a As SRComunicacion.Eventos In CallInicio()
                    DDList1.Items.Add(New ListItem(a.Nombre, a.ID))
                Next
            End If
           

        End If
        MostrarFormulario(f, f)
    End Sub

    Function CallInicio() As IEnumerable(Of SRComunicacion.Eventos)
        Dim lista As IEnumerable(Of SRComunicacion.Eventos)
        lista = SRC.TraerEventos
        Return lista
    End Function

    Protected Sub DesplegarDataCenter()
        'En la rutina de insert si se logra el insert debe hacerse inserta = True y esconder el popup de insert para cargar los datos
        ' y forzar el postback
        If inserta Then

            DDList1.SelectedIndex = 0
            TextoInfo.Text = "Se ha ingresado exitosamente el nuevo Evento"
            Info.Show()
            inserta = False
            MostrarDDList(f, f, f, f, f, f, f, f, f)

        Else
            If DDList1.SelectedItem.Text.Substring(0, 2).Equals("--") Then
                MostrarDDList(f, f, f, f, f, f, f, f, f)
            Else
                Dim Descripcion As String = SRC.DescripcionEvento(DDList1.SelectedItem.Value)
                DDList1.ToolTip = Descripcion
                InFechaFin.Value = ""
                Dim lista As IEnumerable(Of SRComunicacion.PuntosEvento)
                lista = SRC.PEPorConjunto("Data Center")
                DDList2.Items.Clear()
                DDList2.Items.Add(New ListItem("--Seleccione Data Center--"))
                For Each a As SRComunicacion.PuntosEvento In lista
                    DDList2.Items.Add(New ListItem(a.Nombre, a.ID))
                Next

                MostrarDDList(t, f, f, f, f, f, f, f, f)
            End If
        End If
    End Sub
    
    Protected Sub DesplegarAreas()
        'En la rutina de insert si se logra el insert debe hacerse inserta = True y esconder el popup de insert para cargar los datos
        ' y forzar el postback
        If inserta Then
            DDList2.SelectedIndex = 0
            MostrarDDList(t, f, f, f, f, f, f, f, f)
            TextoInfo.Text = "Se ha ingresado exitosamente el nuevo Data Center"
            Info.Show()
            inserta = False
        Else
            If DDList2.SelectedItem.Text.Substring(0, 2).Equals("--") Then
                MostrarDDList(t, f, f, f, f, f, f, f, f)
            Else
                Dim lista As IEnumerable(Of SRComunicacion.Areas)
                lista = SRC.TraerAreas
                DDList3.Items.Clear()
                DDList3.Items.Add(New ListItem("--Seleccione Area--"))
                For Each a As SRComunicacion.Areas In lista
                    DDList3.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
                MostrarDDList(t, t, f, f, f, f, f, f, f)
            End If
        End If


    End Sub
    'En AÑADA desplegar mensajes
    Protected Sub InicioRuta()
        'En la rutina de insert si se logra el insert debe hacerse inserta = True y esconder el popup de insert para cargar los datos
        ' y forzar el postback
        If inserta Then
            DDList3.SelectedIndex = 0
            MostrarDDList(t, t, f, f, f, f, f, f, f)
            TextoInfo.Text = "El proceso de agregar areas a finalizado, cualquier cambio fue actualizado"
            Info.Show()
            inserta = False
        Else
            If DDList3.SelectedItem.Text.Substring(0, 2).Equals("--") Then
                MostrarDDList(t, t, f, f, f, f, f, f, f)
            Else
                Dim lista As IEnumerable(Of SRComunicacion.PuntosEvento)

                Dim Comparacion As IEnumerable(Of SRComunicacion.Areas)
                Comparacion = SRC.CompararAreas(DDList3.SelectedItem.Text, DDList2.SelectedItem.Value)
                Dim Comparacion1 As SRComunicacion.Areas = Comparacion.ElementAt(0)

                '''Comparacion1 devuelve un .Nombre con true o false dependiendo de la comparacion en el sp
                If Comparacion1.Nombre Then
                    MostrarDDList(t, t, f, f, f, f, f, f, f)
                    MostrarFormulario(t, t)
                    valueRegistro.Text = DDList2.SelectedItem.Value
                Else
                    'añadir aca la consulta de elementos del area con padre el datacenter
                    lista = SRC.TraerPuntos(DDList3.SelectedItem.Text, DDList2.SelectedItem.Value)
                    DDList4.Items.Clear()
                    '''en este momento se sabe si la ruta continúa si no hay
                    '''es necesario encontrar el conjunto inicio de la ruta para esa area por medio de la jerarquia de la tabla tipoPE
                    ''' o cargar DDList4 con los PE que podrian existir hasta llegar al area
                    If lista.Count <> 0 Then
                        Dim Sel As SRComunicacion.PuntosEvento = lista.ElementAt(0)
                        DDList4.Items.Add(New ListItem("--Seleccione " & Sel.Area & "--"))

                        For Each a As SRComunicacion.PuntosEvento In lista
                            DDList4.Items.Add(New ListItem(a.Nombre, a.ID))
                        Next
                        MostrarDDList(t, t, t, f, f, f, f, f, f)

                    Else
                        TextoInfo.Text = "No se ha encontrado una ruta para elementos del area: " & DDList3.SelectedItem.Text &
                                    ", tendrá que añadir elementos, para conformar la ruta"
                        Info.Show()
                        lista = InicioRutaSinElementos(DDList3.SelectedItem.Text, DDList2.SelectedItem.Value)
                        If lista.Count = 0 Then
                            'en este ddlist debo obtener el conjunto usando el area anterior y obteniendo la raiz
                            Dim Conjunto As String = SRC.SigConjunto(DDList3.SelectedItem.Text).Nombre
                            DDList4.Items.Add(New ListItem("--Añada " & Conjunto & "--"))
                            MostrarDDList(t, t, t, f, f, f, f, f, f)
                        Else
                            Dim Sel As SRComunicacion.PuntosEvento = lista.ElementAt(0)
                            DDList4.Items.Add(New ListItem("--Seleccione " & Sel.Area & "--"))

                            For Each a As SRComunicacion.PuntosEvento In lista
                                DDList4.Items.Add(New ListItem(a.Nombre, a.ID))
                            Next
                            MostrarDDList(t, t, t, f, f, f, f, f, f)
                            ''MsgBox("No existe ningún Punto de Evento para el Area: " & DDList3.SelectedItem.Text & "," & vbCr &
                            '            " se desplegará la ruta existente hasta que sea necesario añadir puntos de evento")
                        End If


                    End If

                End If
            End If
        End If


    End Sub
    'Arreglar por id
    Public Function InicioRutaSinElementos(Area As String, IDPE As Integer) As IEnumerable(Of SRComunicacion.PuntosEvento)
        Dim lista As IEnumerable(Of SRComunicacion.PuntosEvento)
        lista = SRC.RaizRutaConjunto(Area, IDPE)
        'Dim IniRuta As String = lista.ElementAt(0).Nombre
        Return lista
    End Function

    ' cada vez q cambia un dropdl desde el 4 en adelante se llama a esta rutina que se encarga de desplegar el
    'siguiente dropdl
    Protected Sub CambioGenerico(ByVal sender As Object, ByVal e As System.EventArgs)
        'Si se agregan dropdownlist que muestran la ruta a la pagina todos deben agruparse aquí en
        'orden respetando el tipo de nombre (en la pag deben estar contenidos en un div y con 
        'un boton a su lado LBX donde X es el numero del DDList, lo mismo para el div DDDListX)
        Dim ListaDDList As IList(Of DropDownList) = {DDList1, DDList2, DDList3, DDList4,
                                                       DDList5, DDList6, DDList7, DDList8,
                                                       DDList9, DDList10}

        Dim DDlistCambio As DropDownList = sender
        Dim DDlistSig As DropDownList
        Dim Mostrar() As Boolean = {f, f, f, f, f, f, f, f, f}
        Dim NumeroDDList As Integer = CInt(DDlistCambio.ID.Substring(6, DDlistCambio.ID.Length() - 6))
        'En la rutina de insert si se logra el insert debe hacerse inserta = True y esconder el popup de insert para cargar los datos
        ' y forzar el postback
        If inserta Then
            DDlistCambio.SelectedIndex = 0
            For i As Integer = 0 To (NumeroDDList - 2)
                Mostrar(i) = t
            Next
            MostrarDDListGenerico(Mostrar)
            TextoInfo.Text = "Se ha ingresado exitosamente el nuevo punto de evento"
            Info.Show()
            inserta = False
        Else
            If (ListaDDList.IndexOf(DDlistCambio) + 1) < ListaDDList.Count Then
                System.Diagnostics.Debug.WriteLine(ListaDDList.IndexOf(DDList10))
                DDlistSig = ListaDDList.Item(ListaDDList.IndexOf(DDlistCambio) + 1)


                'Obtener numero ddlist eso menos 1 será el tope para mostrar en caso de --

                For i As Integer = 0 To (NumeroDDList - 2)
                    Mostrar(i) = t
                Next

                If DDlistCambio.SelectedItem.Text.Substring(0, 2).Equals("--") Then
                    MostrarDDListGenerico(Mostrar)
                Else
                    For i As Integer = 0 To (NumeroDDList - 1)
                        Mostrar(i) = t
                    Next

                    Dim lista As IEnumerable(Of SRComunicacion.PuntosEvento)

                    Dim Comparacion As IEnumerable(Of SRComunicacion.Areas)
                    Comparacion = SRC.CompararAreas(DDList3.SelectedItem.Text, DDlistCambio.SelectedItem.Value)
                    Dim Comparacion1 As SRComunicacion.Areas = Comparacion.ElementAt(0)

                    If Comparacion1.Nombre Then
                        MostrarFormulario(t, t)
                        valueRegistro.Text = DDlistCambio.SelectedItem.Value
                    Else
                        lista = SRC.TraerPuntos(DDList3.SelectedItem.Text, DDlistCambio.SelectedItem.Value)
                        DDlistSig.Items.Clear()
                        If lista.Count <> 0 Then
                            Dim Sel As SRComunicacion.PuntosEvento = lista.ElementAt(0)
                            DDlistSig.Items.Add(New ListItem("--Seleccione " & Sel.Area & "--"))

                            For Each a As SRComunicacion.PuntosEvento In lista
                                DDlistSig.Items.Add(New ListItem(a.Nombre, a.ID))
                            Next
                            MostrarDDListGenerico(Mostrar)
                        Else
                            lista = InicioRutaSinElementos(DDList3.SelectedItem.Text, DDlistCambio.SelectedItem.Value)
                            If lista.Count = 0 Then
                                'puede desactivarse para agilizar el proceso de poblado
                                System.Diagnostics.Debug.WriteLine("info")
                                TextoInfo.Text = "Para esta selección no se ha encontrado una ruta para elementos del area: " & DDList3.SelectedItem.Text &
                                   ", debe añadir elementos y estructurar la ruta"
                                Info.Show()
                                DDlistSig.Items.Add(New ListItem("--Añada Elemento--"))
                                MostrarDDListGenerico(Mostrar)
                            Else
                                Dim Sel As SRComunicacion.PuntosEvento = lista.ElementAt(0)
                                DDlistSig.Items.Add(New ListItem("--Seleccione " & Sel.Area & "--"))

                                For Each a As SRComunicacion.PuntosEvento In lista
                                    DDlistSig.Items.Add(New ListItem(a.Nombre, a.ID))
                                Next
                                MostrarDDListGenerico(Mostrar)
                            End If
                        End If
                    End If
                End If
            End If
        End If
    End Sub

    Protected Sub RegistrarEvento()
        Dim insert As String
        System.Diagnostics.Debug.WriteLine(valueRegistro.Text)
        insert = SRC.InsertarEvento(DDList1.SelectedItem.Text, CInt(valueRegistro.Text), InFechaIni.Value, InFechaFin.Value, TAObs.Value)
        If insert.Equals("True") Then
            System.Diagnostics.Debug.WriteLine("insert correcto")
        Else
            System.Diagnostics.Debug.WriteLine(insert)
        End If
        CBox1.Checked = False
        TAObs.Value = ""
        InFechaIni.Value = ""
        InFechaFin.Value = ""
    End Sub

    Protected Sub Fechas()
        If CBox1.Checked() Then
            MostrarFormulario(t, f)
            InFechaFin.Value = ""
        Else
            MostrarFormulario(t, t)
        End If
    End Sub
    'globales pues son usadas en el boton aceptar del popup

    'RUTINA COMÚN PARA MOSTRAR POPUS FORMULARIOS DE INSERT
    Public Shared Clasificacion As String
    Public Shared PESuperior As String
    Public Shared ddlistActual As String
    Public Shared ddlist As String
    Protected Sub MostrarPopupInsert(ByVal sender As Object, ByVal e As System.EventArgs)
        InNombrePE.Text = ""
        Dim ListaDDList As IList(Of DropDownList) = {DDList1, DDList2, DDList3, DDList4,
                                                        DDList5, DDList6, DDList7, DDList8,
                                                        DDList9, DDList10}
        'capturo el boton q llama al popup
        Dim btn As LinkButton
        Dim DropDL As DropDownList
        Dim DropDLActual As DropDownList
        Dim NumeroBtn As Integer

        btn = sender

        NumeroBtn = CInt(btn.ID.Substring(2, btn.ID.Length() - 2))

        ddlist = Replace(btn.ID.ToString, "LB", "DDList")
        ddlistActual = ddlist
        'ubica el botón asociado al nombre capturado
        DropDLActual = ListaDDList.ToList.Find(Function(x) x.ID = ddlistActual)
        'guarda el valor de lo que contiene el ddlist asociado
        If (DropDLActual.Items(0).Text).Substring(0, 4).Equals("--Añ") Then
            Clasificacion = "--Añ"
        Else
            Clasificacion = (DropDLActual.Items(0).Text).Substring(13, (DropDLActual.Items(0).Text).Length() - 15)
        End If

        'si clasificacion se encuentra con añada elementos no cargara nada
        Dim lista As IEnumerable(Of SRComunicacion.Areas)
        lista = SRC.TipoPorConjunto(Clasificacion)
        DDLTipoUnidad.Items.Clear()
        For Each a As SRComunicacion.Areas In lista
            DDLTipoUnidad.Items.Add(New ListItem(a.Nombre, a.IDArea))
        Next
        DDLConjunto.Items.Clear()
        DDLConjunto.Items.Add(Clasificacion)
        'si el primer item del ddlist que gatilla el popup es --Aña... quiere decir que no existen
        'PE contenidos en el PE superior, por ende es posible insertar cualquier tipo de unidad de cualquier conjunto
        'para un rack podria ser del conjunto storage, servidor o cinta con tipo Disco,cabezal, etc dependiendo del conjunto

        'Conseguir el valor del punto superior
        If ddlistActual.Equals("DDList4") Then
            If (DropDLActual.Items(0).Text).Substring(0, 4).Equals("--Añ") Then
                'El conjunto neceasario lo tendremos en el item 0
                Dim Conjunto As String = (DropDLActual.Items(0).Text).Substring(8, (DropDLActual.Items(0).Text).Length() - 10)
                DDLConjunto.Items.Clear()
                DDLConjunto.Items.Add(Conjunto)
                lista = SRC.TipoPorConjunto(Conjunto)
                DDLTipoUnidad.Items.Clear()
                For Each a As SRComunicacion.Areas In lista
                    DDLTipoUnidad.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
            End If
            'Restamos 2 al numero del nombre del boton de el debemos obtener el nombre del PE superior
            NumeroBtn -= 2
            ddlist = "DDList" & NumeroBtn.ToString
            DropDL = ListaDDList.ToList.Find(Function(x) x.ID = ddlist)
            'obtenemos nombre del puntosuperior y en el sp sacaremos su ID OJOCAMBIAR Y OBTENER ID
            PESuperior = DropDL.SelectedItem.Text
        Else
            If ddlistActual.Equals("DDList2") Then
                'NULL
                PESuperior = "NULL"
            Else
                If ddlistActual.Equals("DDList1") Then
                    'rellenar los formularios
                Else
                    If ddlistActual.Equals("DDList3") Then
                        InsertaAreaIrTipos.Text = "Agregar más" & vbCrLf & "Tipos de Unidad"
                        MuestraFormAreas.Text = "Agregar" & vbCrLf & "Nueva Area"
                        MuestraFormTipos.Text = "Agregar Tipo" & vbCrLf & "de Unidad a Area"
                        lista = SRC.TraerAreas
                        AreaSuperior.Items.Clear()
                        AreaSuperiorAgregarTipo.Items.Clear()
                        For Each a As SRComunicacion.Areas In lista
                            AreaSuperior.Items.Add(New ListItem(a.Nombre, a.IDArea))
                            AreaSuperiorAgregarTipo.Items.Add(New ListItem(a.Nombre, a.IDArea))
                        Next
                        lista = SRC.TipoPorConjunto(AreaSuperior.SelectedItem.Text)
                        TipoSuperior.Items.Clear()
                        TipoSuperiorAgregarTipo.Items.Clear()
                        For Each a As SRComunicacion.Areas In lista
                            TipoSuperior.Items.Add(New ListItem(a.Nombre, a.IDArea))
                            TipoSuperiorAgregarTipo.Items.Add(New ListItem(a.Nombre, a.IDArea))
                        Next
                    Else
                        NumeroBtn -= 1
                        ddlist = "DDList" & NumeroBtn.ToString
                        DropDL = ListaDDList.ToList.Find(Function(x) x.ID = ddlist)
                        PESuperior = DropDL.SelectedItem.Text
                        'Si no existen puntos para el pE anterior se debe sacar los conjuntos bajor el PE anterior
                        'y poder insertar cualquiera
                        If (DropDLActual.Items(0).Text).Substring(0, 4).Equals("--Añ") Then

                            Dim IDPuntoE As Integer = (DropDL.SelectedItem.Value)
                            'buscando por PE
                            lista = SRC.ConjuntosHijos(IDPuntoE)
                            DDLConjunto.Items.Clear()
                            For Each a As SRComunicacion.Areas In lista
                                DDLConjunto.Items.Add(New ListItem(a.Nombre, a.IDArea))
                            Next
                            'carga tipo por selectitem que queda al cargar
                            lista = SRC.TipoPorConjunto(DDLConjunto.SelectedItem.Text)
                            DDLTipoUnidad.Items.Clear()
                            For Each a As SRComunicacion.Areas In lista
                                DDLTipoUnidad.Items.Add(New ListItem(a.Nombre, a.IDArea))
                            Next

                        End If
                    End If


                End If

            End If
        End If

        If ddlistActual.Equals("DDList1") Then
            InsertEventoPopup.Show()
        Else
            If ddlistActual.Equals("DDList3") Then
                Opciones.Visible = True
                FormAreas.Visible = False
                FormTipos.Visible = False
                InsertAreaPopup.Show()
            Else
                InsertPEPopup.Show()
            End If
        End If
    End Sub
    'FIN RUTINA COMÚN

    'RUTINA ASOCIADAS AL LLENADO DE POPUP E INSERT DE PE TODOS LOS DDLIST EXCEPTO 1 y 3
    'EL SIGUIENTE TAMBIEN PARA LOS TIPOS DENTRO DE AREA
    Protected Sub CargaTipoUni(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim DDLConj As DropDownList = sender
        Dim lista As IEnumerable(Of SRComunicacion.Areas)
        lista = SRC.TipoPorConjunto(DDLConj.SelectedItem.Text)
        Select Case DDLConj.ID
            Case "AreaSuperior"
                TipoSuperior.Items.Clear()
                For Each a As SRComunicacion.Areas In lista
                    TipoSuperior.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
            Case "DDLConjunto"
                DDLTipoUnidad.Items.Clear()
                For Each a As SRComunicacion.Areas In lista
                    DDLTipoUnidad.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
            Case "AreaSuperiorAgregarTipo"
                TipoSuperiorAgregarTipo.Items.Clear()
                For Each a As SRComunicacion.Areas In lista
                    TipoSuperiorAgregarTipo.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
        End Select
    End Sub


    Protected Sub InsertPE()
        Dim ListaDDList As IList(Of DropDownList) = {DDList1, DDList2, DDList3, DDList4,
                                                        DDList5, DDList6, DDList7, DDList8,
                                                        DDList9, DDList10}
        Dim ListaDivDDList As IList(Of System.Web.UI.HtmlControls.HtmlControl) = {DDDList1, DDDList2, DDDList3, DDDList4,
                                                        DDDList5, DDDList6, DDDList7, DDDList8,
                                                        DDDList9, DDDList10}

        Dim DropDLActual As DropDownList = ListaDDList.ToList.Find(Function(x) x.ID = ddlistActual)
        Dim DDListPrevio As DropDownList = ListaDDList.ToList.Find(Function(x) x.ID = ddlist)
        Clasificacion = DDLConjunto.SelectedItem.Text
        Dim exc As String
        exc = SRC.InsertarPE(DDLTipoUnidad.SelectedItem.Text, Clasificacion, InNombrePE.Text,
                       DDLTipoEfecto.SelectedItem.Text, PESuperior, "Inicio Sistema")
        If exc.Equals("True") Then

            inserta = True
            InsertPEPopup.Hide()
            Dim lista As IEnumerable(Of SRComunicacion.PuntosEvento)
            Dim Sel As SRComunicacion.PuntosEvento
            Dim IndexIngreso As Integer
            If DropDLActual.ID.Equals(DDList2.ID) Then
                'capturar el indice de ingreso para asegurar el cambio
                IndexIngreso = DDList2.SelectedIndex
                lista = SRC.PEPorConjunto("Data Center")
                DDList2.Items.Clear()
                DDList2.Items.Add(New ListItem("--Seleccione Data Center--"))
                For Each a As SRComunicacion.PuntosEvento In lista
                    DDList2.Items.Add(New ListItem(a.Nombre, a.ID))
                Next
                'Importante pues para que se refresque de manera correcta debe existir un cambio de indice
                If IndexIngreso = 0 Then
                    DDList2.SelectedIndex += 1
                End If
            Else
                If DropDLActual.ID.Equals(DDList4.ID) Then
                    lista = SRC.RaizRutaConjunto(DDList3.SelectedItem.Text, DDList2.SelectedItem.Value)
                Else
                    lista = SRC.TraerPuntos(DDList3.SelectedItem.Text, DDListPrevio.SelectedItem.Value)
                End If

                'si se inserta un valor que no sea el que continue con la ruta esto devuelve 0
                If lista.Count <> 0 Then
                    IndexIngreso = DropDLActual.SelectedIndex
                    DropDLActual.Items.Clear()
                    Sel = lista.ElementAt(0)
                    DropDLActual.Items.Add(New ListItem("--Seleccione " & Sel.Area & "--"))

                    For Each a As SRComunicacion.PuntosEvento In lista
                        DropDLActual.Items.Add(New ListItem(a.Nombre, a.ID))
                    Next
                    'Importante pues para que se refresque de manera correcta debe existir un cambio de indice
                    If IndexIngreso = 0 Then
                        DropDLActual.SelectedIndex += 1
                    End If
                End If


            End If
            ScriptManager.RegisterStartupScript(Me, GetType(Page), "jsKeys", "javascript:Forzar();", True)

        Else
            InsertPEPopup.Hide()
            System.Diagnostics.Debug.WriteLine(exc)
            TextoInfo.Text = "Fallo en el ingreso de: " & InNombrePE.Text
            Info.Show()
        End If

    End Sub
    'FIN RUTINA INSERT PE 

    'RUTINA INSERT EVENTO
    Protected Sub InsertEvento()
        Dim exc As String
        exc = SRC.InsertarTipoEvento(InNombreEvento.Text, TipoEve.SelectedItem.Text, Descripcion.InnerText, "Inicio Sistema")
        If exc.Equals("True") Then
            inserta = True
            Dim IndexIngreso As Integer
            IndexIngreso = DDList1.SelectedIndex
            Dim lista As IEnumerable(Of SRComunicacion.Eventos)
            lista = SRC.TraerEventos
            DDList1.Items.Clear()
            DDList1.Items.Add(New ListItem("--Seleccione Evento--"))
            For Each a As SRComunicacion.Eventos In CallInicio()
                DDList1.Items.Add(New ListItem(a.Nombre, a.ID))
            Next
            'Importante pues para que se refresque de manera correcta debe existir un cambio de indice
            If IndexIngreso = 0 Then
                DDList1.SelectedIndex += 1
            End If
            InsertEventoPopup.Hide()
            ScriptManager.RegisterStartupScript(Me, GetType(Page), "jsKeys", "javascript:Forzar();", True)
        Else
            System.Diagnostics.Debug.WriteLine(exc)
            TextoInfo.Text = "Fallo en el ingreso de: " & InNombreEvento.Text
            InsertEventoPopup.Hide()
            Info.Show()
        End If
    End Sub
    'FIN RUTINA INSERT EVENTO


    'RUTINA INSERT AREA
    Protected Sub AccionInsertArea(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim Btn As Button = sender
        Dim BtnID As String = Btn.ID
        Dim lista As IEnumerable(Of SRComunicacion.Areas)
        Dim IndexIngreso As Integer
        Select Case BtnID
            Case "Finalizar"
                'Carga, Refresca y sale PENDIENTE
                inserta = True
                IndexIngreso = DDList3.SelectedIndex
                lista = SRC.TraerAreas
                DDList3.Items.Clear()
                DDList3.Items.Add(New ListItem("--Seleccione Area--"))
                For Each a As SRComunicacion.Areas In lista
                    DDList3.Items.Add(New ListItem(a.Nombre, a.IDArea))
                Next
                'Importante pues para que se refresque de manera correcta debe existir un cambio de indice
                If IndexIngreso = 0 Then
                    DDList3.SelectedIndex += 1
                End If
                InsertAreaPopup.Hide()
                ScriptManager.RegisterStartupScript(Me, GetType(Page), "jsKeys", "javascript:Forzar();", True)

            Case "InsertarSalir"
                'inserta area y refresca
                Dim exc As String
                exc = SRC.InsertarArea(AreaSuperior.SelectedItem.Text, TipoSuperior.SelectedItem.Text,
                                       InNombreArea.Text, InNombreTipoUnidad.Text, "Inicio Sistema")
                If exc.Equals("True") Then
                    inserta = True
                    IndexIngreso = DDList3.SelectedIndex
                    InsertPEPopup.Hide()
                    lista = SRC.TraerAreas
                    DDList3.Items.Clear()
                    DDList3.Items.Add(New ListItem("--Seleccione Area--"))
                    For Each a As SRComunicacion.Areas In lista
                        DDList3.Items.Add(New ListItem(a.Nombre, a.IDArea))
                    Next
                    'Importante pues para que se refresque de manera correcta debe existir un cambio de indice
                    If IndexIngreso = 0 Then
                        DDList3.SelectedIndex += 1
                    End If
                    InsertAreaPopup.Hide()
                    ScriptManager.RegisterStartupScript(Me, GetType(Page), "jsKeys", "javascript:Forzar();", True)
                Else
                    System.Diagnostics.Debug.WriteLine(exc)
                    TextoInfo.Text = "Fallo en el ingreso de: " & InNombrePE.Text
                    InsertAreaPopup.Hide()
                    Info.Show()
                End If
            Case "InsertaAreaIrTipos"
                'inserta area y se va a insertar mas tipos
                System.Diagnostics.Debug.WriteLine("inserta area")
                FormAreas.Visible = False
                FormTipos.Visible = True
                InsertaTipos.Visible = True
                InsertarSalir.Visible = False
                Finalizar.Visible = False
                IniOpciones.Visible = True
                Dim exc As String
                exc = SRC.InsertarArea(AreaSuperior.SelectedItem.Text, TipoSuperior.SelectedItem.Text,
                                       InNombreArea.Text, InNombreTipoUnidad.Text, "Inicio Sistema")
                If exc.Equals("True") Then
                    AreaSuperiorAgregarTipo.Items.Clear()
                    AreaSuperiorAgregarTipo.Items.Add(New ListItem(InNombreArea.Text, InNombreArea.Text))
                    lista = SRC.TipoPorConjunto(AreaSuperiorAgregarTipo.SelectedItem.Text)
                    TipoSuperiorAgregarTipo.Items.Clear()
                    For Each a As SRComunicacion.Areas In lista
                        TipoSuperiorAgregarTipo.Items.Add(New ListItem(a.Nombre, a.IDArea))
                    Next
                Else
                    System.Diagnostics.Debug.WriteLine(exc)
                    TextoInfo.Text = "Fallo en el ingreso de: " & InNombrePE.Text
                End If

            Case "InsertaTipos"
                'inserta tipos y muestra el inicio del popup (botones insertar area, agregar tipos)
                'boton inserta tipos
                System.Diagnostics.Debug.WriteLine("inserta tipos")
                FormAreas.Visible = False
                FormTipos.Visible = False
                Opciones.Visible = True
                InsertaTipos.Visible = False
                InsertarSalir.Visible = False
                Finalizar.Visible = True
                IniOpciones.Visible = True
                Dim exc As String
                exc = SRC.InsertarTiposParaArea(AreaSuperiorAgregarTipo.SelectedItem.Text, TipoSuperiorAgregarTipo.SelectedItem.Text,
                                       InTipoU1.Text, InTipoU2.Text, InTipoU3.Text, "Inicio Sistema")
                If exc.Equals("True") Then
                    lista = SRC.TipoPorConjunto(AreaSuperiorAgregarTipo.SelectedItem.Text)
                    TipoSuperiorAgregarTipo.Items.Clear()
                    For Each a As SRComunicacion.Areas In lista
                        TipoSuperiorAgregarTipo.Items.Add(New ListItem(a.Nombre, a.IDArea))
                    Next
                Else
                    System.Diagnostics.Debug.WriteLine(exc)
                    TextoInfo.Text = "Fallo en el ingreso de: " & InNombrePE.Text
                End If
            Case "MuestraFormAreas"
                'limpia antes de mostrar
                InNombreArea.Text = ""
                InNombreTipoUnidad.Text = ""
                FormAreas.Visible = True
                Opciones.Visible = False
                InsertaTipos.Visible = False
                InsertarSalir.Visible = True
                Finalizar.Visible = False
                IniOpciones.Visible = True
            Case "MuestraFormTipos"
                'limpia antes de mostrar
                InTipoU1.Text = ""
                InTipoU2.Text = ""
                InTipoU3.Text = ""

                FormTipos.Visible = True
                Opciones.Visible = False
                InsertaTipos.Visible = True
                InsertarSalir.Visible = False
                Finalizar.Visible = False
                IniOpciones.Visible = True
            Case "IniOpciones"
                FormAreas.Visible = False
                FormTipos.Visible = False
                Opciones.Visible = True
                InsertaTipos.Visible = False
                InsertarSalir.Visible = False
                Finalizar.Visible = True
                IniOpciones.Visible = False
        End Select
    End Sub
    'FIN RUTINA INSERT AREA

    'RUTINA CIERRE DE POPUS
    Protected Sub CerrarPopupInsert(ByVal sender As Object, ByVal e As System.EventArgs)
        Dim BtnCerrar As Button = sender
        System.Diagnostics.Debug.WriteLine(BtnCerrar.ID)
        Select Case BtnCerrar.ID
            Case "CerrarIA"
                InsertAreaPopup.Hide()
            Case "CerrarIPE"
                InsertPEPopup.Hide()
            Case "CerrarIE"
                InsertEventoPopup.Hide()
        End Select

    End Sub
    'FIN RUTINA CIERRE DE POPUS

    'RUTINA CIERRE DE POPUS INFORMATIVOS
    Protected Sub CerrarInfo()
        Info.Hide()
    End Sub
    'FIN RUTINA CIERRE DE POPUS INFORMATIVOS



    Protected Sub MostrarFormulario(bool As Boolean, bool1 As Boolean)
        'obtiene el tipo del evento seleccionado para saber si es necesario el checkbox
        If Not DDList1.SelectedItem.Text.Substring(0, 2).Equals("--") Then
            Dim ListaEventos As IEnumerable(Of SRComunicacion.Eventos)
            ListaEventos = CallInicio()
            ' sin .Tipo deberia ser Dim TipoEvento As SRComunicacion.Eventos
            Dim TipoEvento As String
            TipoEvento = ListaEventos.ToList.Find(Function(x) x.Nombre = DDList1.SelectedItem.Text).Tipo
            If TipoEvento.Equals("Puntual") Then
                InFechaFin.Value = "01-01-1900"
            Else
                InFechaFin.Value = ""
            End If
        End If
        If InFechaFin.Value.Equals("01-01-1900") Then
            bool1 = False
            CBox1.Visible = bool1
        Else
            CBox1.Visible = bool
        End If

        Obs.Visible = bool
        TAObs.Visible = bool
        Registro.Visible = bool
        FechaIni.Visible = bool
        InFechaIni.Visible = bool
        FechaFin.Visible = bool1
        InFechaFin.Visible = bool1

    End Sub
    Protected Sub MostrarDDList(a As Boolean, b As Boolean, c As Boolean, d As Boolean, e As Boolean, f As Boolean, g As Boolean, h As Boolean, i As Boolean)
        DDDList2.Visible = a
        DDDList3.Visible = b
        DDDList4.Visible = c
        DDDList5.Visible = d
        DDDList6.Visible = e
        DDDList7.Visible = f
        DDDList8.Visible = g
        DDDList9.Visible = h
        DDDList10.Visible = i
    End Sub

    Protected Sub MostrarDDListGenerico(a() As Boolean)
        DDDList2.Visible = a(0)
        DDDList3.Visible = a(1)
        DDDList4.Visible = a(2)
        DDDList5.Visible = a(3)
        DDDList6.Visible = a(4)
        DDDList7.Visible = a(5)
        DDDList8.Visible = a(6)
        DDDList9.Visible = a(7)
        DDDList10.Visible = a(8)
    End Sub

End Class