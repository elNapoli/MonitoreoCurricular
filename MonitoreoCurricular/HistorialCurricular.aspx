<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="HistorialCurricular.aspx.vb" Inherits="MonitoreoCurricular.HistorialCurricular" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="row">
        <div class="col-lg-12">
            <div class="box dark">
                <header>
                    <div class="icons">
                      <i class="fa fa-edit"></i>
                    </div>
                    <h5>Historial Curricular</h5>
                  
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
                            <label for="text1" class="control-label col-lg-4">Seleccione facultad</label>
                            <div class="col-lg-8">
                 
                                <asp:DropDownList ID="DDFacultad" class="form-control" runat="server" >
            
                                </asp:DropDownList>
                                <cc1:CascadingDropDown 
                                    ID="CDFacultad" 
                                    TargetControlID="DDFacultad" 
                                    PromptText="Seleccione Facultad"
                                    PromptValue="" 
                                    ServicePath="HistorialCurricular.asmx" 
                                    ServiceMethod="CallFacultad" runat="server"
                                    Category="FacultadId" LoadingText = "Cargando..." />
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Escuela</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDEscuela"  class="form-control" runat="server">
                                </asp:DropDownList>
                                <cc1:CascadingDropDown 
                                    ID="CDEscuela" 
                                    TargetControlID="DDEscuela" 
                                    PromptText="Seleccione Escuela"
                                    PromptValue="" 
                                    ServicePath="HistorialCurricular.asmx" 
                                    ServiceMethod="CallEscuelaPorFacultad" 
                                    runat="server"
                                    Category="EscuelaId" 
                                    ParentControlID="DDFacultad" 
                                    LoadingText = "Cargando..."  />
                               
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione carrera</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDCarrera" class="form-control" runat="server">
                                </asp:DropDownList>
                                <cc1:CascadingDropDown 
                                    ID="CDCarrera" 
                                    TargetControlID="DDCarrera" 
                                    PromptText="Seleccione Carrera"
                                    PromptValue="" 
                                    ServicePath="HistorialCurricular.asmx" 
                                    ServiceMethod="CallCarreraPorEscuela" 
                                    runat="server"
                                    Category="CarreraId" 
                                    ParentControlID="DDEscuela" 
                                    LoadingText = "Cargando..."  />



                            </div>
                        </div><!-- /.form-group -->
                    </div>

                                <!--Begin Datatables-->
            <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Dynamic Table</h5>
                  </header>
                  <div id="collapse4" class="body">
                   <table id="HistorialTable" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th></th>
						
						<th>Año</th>
                        <th>Fecha</th>
                        <th>Hito</th>
                        <th>Descripción</th>
                        <th>Antes</th>
                        <th>Después</th>

						
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th></th>
					
						<th>Año</th>
                        <th>Fecha</th>
                        <th>Hito</th>
                        <th>Descripción</th>
                        <th>Antes</th>
                        <th>Después</th>
				
					</tr>
				</tfoot>
			</table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->

            <!--End Datatables-->
                </div><!-- /.body -->

            </div>
        </div>
    </div>
                 
</asp:Content>
