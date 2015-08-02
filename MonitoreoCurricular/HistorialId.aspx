<%@ Page Title="" Language="vb" enableEventValidation="false" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="HistorialId.aspx.vb" Inherits="MonitoreoCurricular.HistorialId" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

      

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        function holamundo(data) {
            //some code here
            var dato = data.split(".");
            jQuery(function ($) {
                for (var i = 0; i < dato.length - 1; i++) {
                    var ur = $('option[value="'+dato[i]+'"]');
                    $(ur).attr("selected", true);
                }
                $(".chosen-select").trigger("chosen:updated");
                $(".chosen-select").trigger("liszt:updated");
                
            });
        }
    </script>

  
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!--BEGIN INPUT TEXT FIELDS-->
    <div class="row">
        <div class="col-lg-12">
            <div class="box dark">
                <header>
                    <div class="icons">
                        <i class="fa fa-edit"></i>
                    </div>
                    <h5>Subir Resolución</h5>

                    <!-- .toolbar -->
                    <div class="toolbar">
                        <nav style="padding: 8px;">
                            <a href="javascript:;" class="btn btn-default btn-xs collapse-box">
                                <i class="fa fa-minus"></i>
                            </a>
                            <a href="javascript:;" class="btn btn-default btn-xs full-box">
                                <i class="fa fa-expand"></i>
                            </a>
                            <a href="javascript:;" class="btn btn-danger btn-xs close-box">
                                <i class="fa fa-times"></i>
                            </a>
                        </nav>
                    </div>
                    <!-- /.toolbar -->
                </header>
                <div id="div-1" class="body">
                    <div class="form-horizontal">

                        <div class="form-group">

                            <div class="col-lg-3">

                               </div>
                            <div class="col-lg-3">

                                <a id="Btn_Guadrdgar"  class="btn btn-primary start" href="#"><i class="glyphicon glyphicon-edit"></i><span> Editar historial</span></a>
                            </div>
                            <div class="col-lg-3">
                                <asp:LinkButton ID="BtnEliminar" 
                                    runat="server" 
                                    CssClass="btn btn-danger start"    
                                    OnClick="EliminarHistorial">
                                    <span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Eliminar historial
                                    </asp:LinkButton>
                                </div>
                            <div class="col-lg-3">

                          </div>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Plan</label>
                            <div class="col-lg-8">

                                <asp:DropDownList ID="DDPlan" class="form-control" runat="server">
                                </asp:DropDownList>
                                <cc1:CascadingDropDown
                                    ID="CDPlan"
                                    TargetControlID="DDPlan"
                                    PromptText="Seleccione Plan"
                                    PromptValue=""
                                    ServicePath="SubirResolucion.asmx"
                                    ServiceMethod="CallPlan" runat="server"
                                    Category="PlanId" LoadingText="Cargando..." />
                            </div>
                        </div>
                        <!-- /.form-group -->



                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Carrera</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDCarrera" class="form-control" runat="server">
                                </asp:DropDownList>
                                <cc1:CascadingDropDown
                                    ID="CDCarrera"
                                    TargetControlID="DDCarrera"
                                    PromptText="Seleccione Carrera"
                                    PromptValue=""
                                    ServicePath="SubirResolucion.asmx"
                                    ServiceMethod="CallCarreraPorPlan"
                                    runat="server"
                                    Category="CarreraId"
                                    ParentControlID="DDPlan"
                                    LoadingText="Cargando..." />

                            </div>
                        </div>
                        <!-- /.form-group -->


                        <div class="form-group">
                            <label class="control-label col-lg-4"for="dp3">Fecha de resolución</label>
                            <div class="col-lg-3">
                                <div class="input-group input-append date"  id="dp3" data-date-format="dd-mm-yyyy">

                                    <asp:TextBox ID="FechaResolucion" runat="server" class="form-control" type="text" ReadOnly />

                                    <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span>
                                </div>
                            </div>
                        </div>



                        <div class="form-group">
                            <label class="control-label col-lg-4">Hito</label>
                            <div class="col-lg-8">

                                <asp:DropDownList runat="server" ID="DDHito" class="form-control">
                                    <asp:ListItem Text="Seleccione Hito"/>
                                    <asp:ListItem Text="Modificaicón menor"  />
                                    <asp:ListItem Text="Modificación mayor" />
                                    <asp:ListItem Text="Innovación curricular" />
                                </asp:DropDownList>
                            </div>
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group">
                            <label class="control-label col-lg-4">Asignaturas</label>
                            <div class="col-lg-8">


                                <asp:DropDownList runat="server" ID="DDAsignaturas" data-placeholder="Seleccione las Asignaturas involucradas en el proyecto" class="form-control chzn-select" multiple TabIndex="6">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="text2" class="control-label col-lg-4">Descripción Cambio</label>
                            <div class="col-lg-8">
                                <textarea runat="server" id="Descripcion" class="form-control"></textarea>
                            </div>
                        </div>
                        <!-- /.form-group -->
                        <div class="form-group">
                            <label for="limiter" class="control-label col-lg-4">Antes</label>
                            <div class="col-lg-8">
                                <textarea runat="server" id="antes" class="form-control"></textarea>
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="form-group">
                            <label for="text4" class="control-label col-lg-4">Después</label>
                            <div class="col-lg-8">
                                <textarea runat="server" id="despues" class="form-control"></textarea>
                            </div>
                        </div>




                         <!-- /.form-group -->
                        <div class="form-group">
                            <div id="container"  class=" control-label col-lg-4">
                                <a id="pickfiles" class="btn btn-success fileinput-button  " href="#"> <i class="glyphicon glyphicon-plus"></i><span> Seleccione archivos</span> </a>
                            </div>

                        
                             <div id="filelist" class="col-lg-8"> </div>

                     
                        </div>
                        <!-- /.form-group -->





                    </div>
                </div>
            </div>
        </div>

        <!--END TEXT INPUT FIELD-->


    </div>
    <!-- /.row -->



</asp:Content>
