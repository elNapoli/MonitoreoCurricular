<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="HistorialCurricular.aspx.vb" Inherits="MonitoreoCurricular.HistorialCurricular" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                <asp:DropDownList ID="DDFacultad" class="form-control" runat="server" AutoPostBack="true" CausesValidation="false"></asp:DropDownList>
                              
                         
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione Escuela</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDEscuela" class="form-control" runat="server" AutoPostBack="true" CausesValidation="false" ><asp:ListItem Text="--Seleccione escuela--" Value="0" /></asp:DropDownList>
                               
                                    
                               
                            </div>
                        </div><!-- /.form-group -->

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">Seleccione carrera</label>
                            <div class="col-lg-8">
                                <asp:DropDownList ID="DDCarrera" class="form-control" runat="server" AutoPostBack="true" CausesValidation="false" ><asp:ListItem Text="--Seleccione carrera--" Value="0" /></asp:DropDownList>
                         
                            </div>
                        </div><!-- /.form-group -->
                    </div>
                </div><!-- /.body -->

            </div>
        </div>
    </div>


                        
</asp:Content>
