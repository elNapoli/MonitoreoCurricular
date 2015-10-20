<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="SubirResolucion.aspx.vb" Inherits="MonitoreoCurricular.SubirResolucion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <input type="hidden" id="ExisteResol"/>

            <div class="contentLoading " id="element_to_pop_up"  style="display:none;">

                <asp:Image ImageUrl="/img/loading_spinner.gif" runat="server" />
                        <p class="alertify-message">Subiendo las resoluciones</p>      

            </div>
    
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <!--BEGIN INPUT TEXT FIELDS-->


   
        <div class="col-lg-12" id="demo-form" data-parsley-validate>
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
                             <div class="row">


     
                            <label for="text1" class="control-label col-lg-4">Seleccione Plan</label>
                            <div class="col-lg-8">
                               
                                <asp:DropDownList ID="DDPlan" class="form-control" runat="server" required>
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

                            <br />

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Carrera</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDCarrera" class="form-control" runat="server" required>
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

                                <asp:DropDownList runat="server" ID="DDHito" class="form-control" required  >
                                    <asp:ListItem Text="Seleccione Hito" Value=""/>
                                    <asp:ListItem Text="Modificación menor"  />
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
                            <label for="text2" class="control-label col-lg-4" >Descripción Cambio</label>
                            <div class="col-lg-8">
                                <textarea id="Descripcion" class="form-control" required maxlength="255" data-parsley-maxlength="255"></textarea>
                            </div>
                        </div>
                        <!-- /.form-group -->
                        <div class="form-group">
                            <label for="limiter" class="control-label col-lg-4" >Antes</label>
                            <div class="col-lg-8">
                                <textarea id="antes" class="form-control" required maxlength="255" data-parsley-maxlength="255"></textarea>
                            </div>
                        </div>
                        <!-- /.row -->
                        <div class="form-group">
                            <label for="text4" class="control-label col-lg-4">Después</label>
                            <div class="col-lg-8">
                                <textarea id="despues" class="form-control" required maxlength="255" data-parsley-maxlength="255" ></textarea>
                            </div>
                        </div>




                         <!-- /.form-group -->
                        <div class="form-group">
                            <div id="container"  class=" control-label col-lg-4">
                                <a id="pickfiles" class="btn btn-success fileinput-button  " href="#"> <i class="glyphicon glyphicon-plus"></i><span> Seleccione archivos</span> </a>
                            </div>

                        
                             <div id="filelist" class="col-lg-8">

                                    
                             </div>
                           
                  
                        </div>
                        <!-- /.form-group -->

                        <div class="form-group">

                            <div class="control-label col-lg-4"></div>
                            <div class="col-lg-8">

                                <a id="Btn_Guardar"  class="btn btn-primary start" href="#"><i class="glyphicon glyphicon-upload"></i><span> Subir Archivos</span></a>
                            </div>
                        </div>
                        <!-- /.form-group -->



                    </div>
                </div>
            </div>
        </div>

        <!--END TEXT INPUT FIELD-->

    </div>
 
    <!-- /.row -->

 
        <script>

            $(document).ready(function () {
                $.listen('parsley:field:validate', function () {
                    validateFront('#demo-form');

                });
                window.Parsley.setLocale('es');
       


                $('#demo-form').click(function () {
                    $('#demo-form').parsley().validate();
                    validateFront('#demo-form');

                });

            });
    </script>

</asp:Content>
