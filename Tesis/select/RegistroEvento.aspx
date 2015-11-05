<%@ Page EnableEventValidation="false" Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Sitio.Master" CodeBehind="RegistroEvento.aspx.vb" Inherits="protoReg.RegistroEvento1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
	    .modalBackground
        {
	    background-color: Black;
	    filter: alpha(opacity=90);
	    opacity: 0.8;
	    z-index: 10000;
        }
    </style>
    <script type='text/javascript'>
        function Forzar() {
            __doPostBack('', '');
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menu" runat="server">
    <ul class="nav navbar-nav"> 
        <li  class="active"><a href="RegistroEvento.aspx">Registrar Evento</a></li>
        <li><a href="EventosEnCurso.aspx">Eventos en Curso</a></li>
        <li><a href="InformesBitacora.aspx">Informes</a></li>
    </ul>
</asp:Content>
<%--Si hay una ruta mas larga que 7 capas será necesario asociar los ddlist sobrantes otra subrutina--%>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <ajaxToolkit:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></ajaxToolkit:ToolkitScriptManager>
     <div style="position:relative; float:left; left: 19.5%; height: 224px; width: 300px;">
        
        <div id="DDDList1" runat="server">  
        <asp:DropDownList ID="DDList1" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="DesplegarDataCenter">
        </asp:DropDownList><asp:LinkButton  ID = "LB1"  runat="server"  Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/>
        </div>
        <p></p>
        <div id="DDDList2" runat="server"  visible="false">
        <asp:DropDownList ID="DDList2" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged ="DesplegarAreas">
        </asp:DropDownList><asp:LinkButton  ID = "LB2"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs"  OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList3" runat="server"  visible="false">
        <asp:DropDownList ID="DDList3" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="InicioRuta">
        </asp:DropDownList><asp:LinkButton  ID = "LB3"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList4" runat="server"  visible="false">
        <asp:DropDownList ID="DDList4" runat="server" AutoPostBack="true" CausesValidation="false"  style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB4"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList5" runat="server"  visible="false">
        <asp:DropDownList ID="DDList5" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB5"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList6" runat="server"  visible="false">
        <asp:DropDownList ID="DDList6" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB6"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList7" runat="server"  visible="false">
        <asp:DropDownList ID="DDList7" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB7"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>
        <%-- no se llega tan profundo no han sido usados por ahora--%>
        <div id="DDDList8" runat="server"  visible="false">
        <asp:DropDownList ID="DDList8" runat="server" AutoPostBack="true" CausesValidation="false"  style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB8"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>

        <div id="DDDList9" runat="server"  visible="false" >
        <asp:DropDownList ID="DDList9" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="CambioGenerico" >
        </asp:DropDownList><asp:LinkButton  ID = "LB9"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div>
        
        <div id="DDDList10" runat="server"  visible="false">
        <asp:DropDownList ID="DDList10" runat="server" AutoPostBack="true" CausesValidation="false" style="float:left" OnSelectedIndexChanged="CambioGenerico">
        </asp:DropDownList><asp:LinkButton  ID = "LB10"  runat="server" Text="<span class='glyphicon glyphicon-plus' style='font-size:14px'></span>"
         CssClass="btn btn-success btn-xs" OnClick="MostrarPopupInsert"/><p></p>
        </div> 
           
    </div>
    
    <%--popup insertar punto evento--%>
    
    <asp:LinkButton  ID = "TargetCIDHidden"  runat="server" style="visibility:hidden"/> 
    <ajaxToolkit:ModalPopupExtender ID="InsertPEPopup" runat="server"
                TargetControlID = "TargetCIDHidden"
                PopupControlID = "InsertPEPopupForm"
                BackgroundCssClass = "modalBackground"
                Enabled = "true"
    />
    <asp:Panel ID="InsertPEPopupForm" runat="server" Style="display:none; background:white; width:auto; height:auto">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
        <div class="modal-header">
            <asp:Button runat="server" CssClass="close" ID="CerrarIPE" OnClick ="CerrarPopupInsert" Text ="x"/>
            <h3 id="TitPopup" runat="server">Agregar Punto de Evento</h3>
        </div>
        <div class="modal-body">
            <div class="container-fluid well">
                    <div class="control-group">
                        <label class="control-label"><strong>Nombre del punto de Evento</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InNombrePE" runat="server" CssClass ="span11" placeholder="Punto de Evento"></asp:TextBox>
                        </div>
                    </div>
                        <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Tipo de Efecto</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="DDLTipoEfecto" runat="server">
                                <asp:ListItem>Físico</asp:ListItem>
                                <asp:ListItem>Software</asp:ListItem>
                                <asp:ListItem>Servicio</asp:ListItem>
                                <asp:ListItem>Servicio Externo</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Conjunto del Punto de Evento</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="DDLConjunto" runat="server" AutoPostBack="true" CausesValidation="false" OnSelectedIndexChanged="CargaTipoUni"></asp:DropDownList>
                        </div>
                    </div>
                     <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Tipo del Punto de Evento</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="DDLTipoUnidad" runat="server"></asp:DropDownList>
                        </div>
                    </div>
              </div>
               
        </div>
        <div class="modal-footer">
            <asp:Button ID="Insertar" runat="server" Text="Aceptar" OnClick="InsertPE"/>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Panel>
   <%--fin popup--%>

   <%--popup insertar evento--%>
    <asp:LinkButton  ID = "TargetCIDHidden2"  runat="server" style="visibility:hidden"/> 
    <ajaxToolkit:ModalPopupExtender ID="InsertEventoPopup" runat="server"
                TargetControlID = "TargetCIDHidden2"
                PopupControlID = "InsertEventoPopupForm"
                BackgroundCssClass = "modalBackground"
                Enabled = "true"
    />
    <asp:Panel ID="InsertEventoPopupForm" runat="server" Style="display:none; background:white; width:auto; height:auto">
        <asp:UpdatePanel ID="UpdatePanel3" runat="server">
        <ContentTemplate>
        <div class="modal-header">
            <asp:Button runat="server" CssClass="close" ID="CerrarIE" OnClick ="CerrarPopupInsert" Text ="x"/>
            <h3 id="H1" runat="server">Agregar Evento</h3>
        </div>
        <div class="modal-body">
            <div class="container-fluid well">
                    <div class="control-group">
                        <label class="control-label"><strong>Nombre Evento</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InNombreEvento" runat="server" CssClass ="span11" placeholder="Evento"></asp:TextBox>
                        </div>
                    </div>
                        <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Tipo (Duración)</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="TipoEve" runat="server">
                                <asp:ListItem>Prolongado</asp:ListItem>
                                <asp:ListItem>Puntual</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Descripción del Evento</strong></label>
                        <div class="controls">
                            <textarea id="Descripcion" cols="40" rows="6" text="" runat="server"></textarea>
                        </div>
                    </div>
            </div>
               
        </div>
        <div class="modal-footer">
            <asp:Button ID="InsertarEve" runat="server" Text="Aceptar" OnClick="InsertEvento"/>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Panel>
   <%--fin popup--%>

    <%--popup insertar Area--%>
    <asp:LinkButton  ID = "TargetCIDHidden3"  runat="server" style="visibility:hidden"/> 
    <ajaxToolkit:ModalPopupExtender ID="InsertAreaPopup" runat="server"
                TargetControlID = "TargetCIDHidden3"
                PopupControlID = "InsertAreaPopupForm"
                BackgroundCssClass = "modalBackground"
                Enabled = "true"
    />
    <asp:Panel ID="InsertAreaPopupForm" runat="server" Style="display:none; background:white; width:auto; height:auto">
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
        <ContentTemplate>
        <div class="modal-header">
            <%--<asp:Button runat="server" CssClass="close" ID="CerrarIA" OnClick ="CerrarPopupInsert" Text ="x"/>--%>
            <h3 id="H2" runat="server">Agregar Area</h3>
        </div>
        <div class="modal-body">
            <div class="container-fluid well">
                <div id="Opciones" runat="server">
                    <asp:Button ID="MuestraFormAreas" runat="server" OnClick="AccionInsertArea"/>
                    <asp:Button ID="MuestraFormTipos" runat="server" OnClick="AccionInsertArea"/>
                </div>
                <div id="FormAreas" runat="server" visible="false">
                    <div class="control-group">
                        <label class="control-label"><strong>Area Superior - Tipo Superior</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="AreaSuperior" runat="server" AutoPostBack="true" CausesValidation="false" OnSelectedIndexChanged="CargaTipoUni"></asp:DropDownList>
                            <asp:DropDownList ID="TipoSuperior" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Nombre Area:</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InNombreArea" runat="server" CssClass ="span11" placeholder="Area"></asp:TextBox>
                        </div>
                        <label class="control-label"><strong>Nombre Tipo Unidad:</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InNombreTipoUnidad" runat="server" CssClass ="span11" placeholder="Tipo Unidad"></asp:TextBox>
                        </div>
                    </div> 
                    <p></p>
                    <div class="control-group">
                         <div class="controls">
                            <asp:Button ID="InsertaAreaIrTipos" runat="server" OnClick="AccionInsertArea"/>
                         </div>
                    </div>                         
                    
                </div> 
                <div id="FormTipos" runat="server" visible="false">
                    <div class="control-group">
                        <label class="control-label"><strong>Area-Tipo Superior</strong></label>
                        <div class="controls">
                            <asp:DropDownList ID="AreaSuperiorAgregarTipo" runat="server" AutoPostBack="true" CausesValidation="false" OnSelectedIndexChanged="CargaTipoUni"></asp:DropDownList>
                            <asp:DropDownList ID="TipoSuperiorAgregarTipo" runat="server"></asp:DropDownList>
                        </div>
                    </div>
                    <p></p>
                    <div class="control-group">
                        <label class="control-label"><strong>Nombre Tipo Unidad:</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InTipoU1" Text ="" runat="server" CssClass ="span11" placeholder="Tipo Unidad"></asp:TextBox>
                        </div>
                        <label class="control-label"><strong>Nombre Tipo Unidad:</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InTipoU2" Text ="" runat="server" CssClass ="span11" placeholder="Tipo Unidad"></asp:TextBox>
                        </div>
                        <label class="control-label"><strong>Nombre Tipo Unidad:</strong></label>
                        <div class="controls">
                            <asp:TextBox ID="InTipoU3" Text ="" runat="server" CssClass ="span11" placeholder="Tipo Unidad"></asp:TextBox>
                        </div>
                    </div> 
                </div>             
            </div>
            
        </div>
        <div class="modal-footer">
            <asp:Button ID="IniOpciones" runat="server" Text="Ir a Opciones" OnClick="AccionInsertArea" Visible="False"/>
            <asp:Button ID="Finalizar" runat="server" Text="Finalizar" OnClick="AccionInsertArea"/>
            <asp:Button ID="InsertarSalir" runat="server" Text="Insertar y Finalizar" OnClick="AccionInsertArea" visible="false"/>
            <asp:Button ID="InsertaTipos" runat="server" Text="Agregar" OnClick="AccionInsertArea" visible="false"/>
        </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    </asp:Panel>
   <%--fin popup--%>
   
   <%-- popup info --%>
     <asp:LinkButton  ID = "TargetCIDHidden1"  runat="server" style="visibility:hidden"/>
     <ajaxToolkit:ModalPopupExtender ID="Info" runat="server"
                TargetControlID = "TargetCIDHidden1"
                PopupControlID = "Informacion"
                BackgroundCssClass = "modalBackground"
                Enabled = "true"
    />
    <asp:Panel ID="Informacion" runat="server" Style="display:none; background:white; width:30%; height:auto">
        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
        <ContentTemplate>
        <div class="modal-header">
            <h3 id="TitInfo" runat="server">Información Importante</h3>
        </div>
        <div class="modal-body">
            <div class="container-fluid well">
                  <asp:Label ID ="TextoInfo" runat="server"></asp:Label> 
            </div> 
        </div>
        <div class="modal-footer">
            <asp:Button  runat="server" Text="Aceptar" OnClick ="CerrarInfo"/>
        </div>
        
        </ContentTemplate>
        </asp:UpdatePanel>
    </asp:Panel>
     <%--fin popup info--%>

        
    
    
    <div style="position:absolute; float:left; top: 6%; left: 40%">

        <div style="position:relative; left: 38%">
        <asp:Label ID="Obs" Text="Observación" runat="server"></asp:Label>
        </div>
        <div>
        <textarea id="TAObs" cols="40" rows="6" runat="server"></textarea>
        </div>
        <div style="position:relative; left: 39.5%">
        <asp:CheckBox ID="CBox1" Text=" Abierto" runat="server" AutoPostBack="true" CausesValidation="false" OnCheckedChanged ="Fechas" />
        </div>
        <div style="position:relative; left: 27%">
            <asp:Label ID="FechaIni" Text="Ingrese fecha y hora de inicio" runat="server" Visible="false"></asp:Label>
            <input id="InFechaIni" type="text"  runat="server" Visible="false" class="form-control" style="height: 28px; width:162px" placeholder="dd-mm-aaaa hh:mm"/>
            <asp:Label ID="FechaFin" Text="Ingrese fecha y hora de fin" runat="server" Visible="false"></asp:Label>
            <input id="InFechaFin" type="text"  runat="server" Visible="false" class="form-control" style="height: 28px; width:162px" placeholder="dd-mm-aaaa hh:mm"/>     
            <p></p>
        </div>
        <div style="position:relative; left: 27%" >
         <asp:LinkButton  ID = "Registro"  runat="server" Text="<span class='glyphicon glyphicon-ok' style='font-size:14px'> Registrar Evento</span>" CssClass="btn btn-success btn-xs" Height="28px" Width="162px" OnClick ="RegistrarEvento"/>     
         <asp:Label ID="valueRegistro" runat="server" Visible="false"></asp:Label>
        </div>

    </div> 
    
    <script> src = "Scripts/jquery-2.1.3.js"</script>
    <script> src = "Scripts/bootstrap.js"</script>
</asp:Content>
