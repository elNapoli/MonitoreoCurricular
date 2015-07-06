﻿<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="SubirResolucion.aspx.vb" Inherits="MonitoreoCurricular.SubirResolucion" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript" language="javascript" class="init">

        function holamundo() {
            var Plan = $('#ContentPlaceHolder1_DDPlan').val();
            var Carrera = $('#ContentPlaceHolder1_DDCarrera').val();
            var Fecha = $('#ContentPlaceHolder1_FechaResolucion').val();
            var Hito = $('#ContentPlaceHolder1_DDHito').val();
            var Asignaturas = $('.chzn-select').chosen().val();
            var Descripción = $('#Descripcion').val();
            var Antes = $('#antes').val();
            var Después = $('#despues').val();

            console.log(Plan);
            console.log(Carrera);
            console.log(Fecha);
            console.log(Hito);
            console.log(Asignaturas);
            console.log(Descripción);
            console.log(Antes);
            console.log(Después);


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
                    </div><!-- /.toolbar -->
                  </header>
                  <div id="div-1" class="body">
                    <div class="form-horizontal">
                        
                      <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Plan</label>
                            <div class="col-lg-8">
          
                                <asp:DropDownList ID="DDPlan" class="form-control" runat="server" >
            
                                </asp:DropDownList>
                                <cc1:CascadingDropDown 
                                    ID="CDPlan" 
                                    TargetControlID="DDPlan" 
                                    PromptText="Seleccione Plan"
                                    PromptValue="" 
                                    ServicePath="SubirResolucion.asmx" 
                                    ServiceMethod="CallPlan" runat="server"
                                    Category="PlanId" LoadingText = "Cargando..." />
                            </div>
                        </div><!-- /.form-group -->



                    <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Carrera</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDCarrera"  class="form-control" runat="server">
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
                                    LoadingText = "Cargando..."  />
                               
                            </div>
                        </div><!-- /.form-group -->


                      <div class="form-group">
                        <label class="control-label col-lg-4" for="dp3">Fecha de resolución</label>
                        <div class="col-lg-3">
                          <div class="input-group input-append date" id="dp3"  data-date="12-07-2015" data-date-format="dd-mm-yyyy">
                             
                              <asp:TextBox id="FechaResolucion" runat="server" class="form-control" type="text" readonly />

                            <span class="input-group-addon add-on"><i class="fa fa-calendar"></i></span> 
                          </div>
                        </div>
                      </div>



                      <div class="form-group">
                        <label class="control-label col-lg-4">Hito</label>
                        <div class="col-lg-8">
                    
                            <asp:DropDownList runat="server" id="DDHito" class="form-control">
                                <asp:ListItem Text="Seleccione Hito" Value ="0" />
                                <asp:ListItem Text="Modificaicón menor" value="1"/>
                                <asp:ListItem Text="Modificación mayor" value="2"/>
                                 <asp:ListItem Text="Innovación curricular" value="3"/>
                            </asp:DropDownList>
                        </div>
                      </div><!-- /.form-group -->

                      <div class="form-group">
                        <label class="control-label col-lg-4">Asignaturas</label>
                        <div class="col-lg-8">
                            

                            <asp:DropDownList runat="server" ID="DDAsignaturas" data-placeholder="Seleccione las Asignaturas involucradas en el proyecto" class="form-control chzn-select" multiple tabindex="6">
                          
                            </asp:DropDownList>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="text2" class="control-label col-lg-4">Descripción Cambio</label>
                        <div class="col-lg-8">
                          <textarea  id="Descripcion" class="form-control"></textarea>
                        </div>
                      </div><!-- /.form-group -->
                      <div class="form-group">
                        <label for="limiter" class="control-label col-lg-4">Antes</label>
                        <div class="col-lg-8">
                          <textarea id="antes" class="form-control"></textarea>
                        </div>
                      </div><!-- /.row -->
                      <div class="form-group">
                        <label for="text4" class="control-label col-lg-4">Después</label>
                        <div class="col-lg-8">
                          <textarea id="despues" class="form-control"></textarea>
                        </div>
                      </div><!-- /.form-group -->
                              <div class="form-group">
                            <div id="container">
                                <div class="col-lg-1"></div>
                                <a id="pickfiles"  class="btn btn-primary btn-lg btn-round btn-line  col-lg-3" href="#">Seleccione archivos</a>

                            </div>
                       
                            <div class="col-lg-8" id="fileList">
                      
                            </div>
                                  <a id="uploadfiles" href="#">[Upload files]</a>
                        </div><!-- /.form-group -->

                        
                        <div class="form-group">
                 
                            <div class="control-label col-lg-4"></div>
                        <div class="col-lg-8">
                          <a id="Btn_Guardar"    class="btn btn-primary btn-lg btn-round btn-line  col-lg-4" href="#">Guardar Cambios</a>
                        </div>
                      </div><!-- /.form-group -->



                    </div>
                  </div>
                </div>
              </div>

              <!--END TEXT INPUT FIELD-->

          
            </div><!-- /.row -->
    <asp:Button Text="text" runat="server" onclick="Unnamed_Click"/>
    <input type="button" name="name" value=" " id="submit"/>
   
    
    
</asp:Content>