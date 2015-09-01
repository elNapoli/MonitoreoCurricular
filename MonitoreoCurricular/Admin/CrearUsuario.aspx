<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="CrearUsuario.aspx.vb" Inherits="MonitoreoCurricular.CrearUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  <script type="text/javascript">
      $(document).ready(function () {
          $('#ContentPlaceHolder1_txt_run').Rut({
              digito_verificador: '#ContentPlaceHolder1_txt_div',
              format_on: 'keyup',
              on_error: function () {

                  $("#ContentPlaceHolder1_TextBox1").val("Rut Incorrecto!"); 
                  $("#letretoAlert").removeClass("alert-success")
                  $("#letretoAlert").addClass("alert-danger")
                  __doPostBack('<%=UpdatePanel1.ClientID%>', '');
              },
              on_success: function () {
               
                  $("#ContentPlaceHolder1_TextBox1").val("Rut Correcto!");
                  $("#letretoAlert").addClass("alert-success")
                  $("#letretoAlert").removeClass("alert-danger")
                  __doPostBack('<%=UpdatePanel1.ClientID%>', '');
              }
          });

      });


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
                    <h5>Crear usuario</h5>

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
                </header><up
                <div id="div-1" class="body">
                    <div class="form-horizontal">

                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">R.U.N.</label>
                            <div class="col-lg-8">
                                <div class="col-lg-4"> 
                                      <asp:TextBox runat="server"  ID="txt_run"  class="form-control"/>

                                </div>
                                <div class="col-lg-2"> 

                                        <asp:TextBox runat="server" MaxLength="1" ID="txt_div" class="form-control"/>
                                </div>
                                <div class="col-lg-6"> 

                                    <div class="alert" id="letretoAlert">
                                                         <asp:UpdatePanel runat="server" ID ="UpdatePanel1">
          <ContentTemplate>
              
                <asp:label runat="server" ID="lerolero" />
              

          </ContentTemplate>
      </asp:UpdatePanel>
                                        </div>
                                        <asp:TextBox runat="server" style="display:none;color:red" ID="TextBox1"  class="form-control"/>
                                   
                                </div>
                            </div>
                      </div>



                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Nombre</label>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server" class="form-control" ID="txt_nombre"/>
  
                        </div>
                      </div>

                       <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Apellido paterno</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server" class="form-control" ID="txt_apPaterno"/>
                        </div>
                      </div>


                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Apellido materno</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server" class="form-control" ID="txt_apMaterno"/>
                        </div>
                      </div>




                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Email</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server" class="form-control" ID="txt_email"/>
                        </div>
                      </div>


                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Rol</label>
                        <div class="col-lg-8">
                            <asp:DropDownList runat="server" class="form-control" >
                                <asp:ListItem value="" Text="Seleccione rol" />
                                <asp:ListItem value="1" Text="Administrador" />
                                <asp:ListItem Value="2" Text="Usuario" />
                            </asp:DropDownList>
                        </div>
                      </div>
<div class="form-group">

                            <div class="control-label col-lg-4"></div>
                            <div class="col-lg-8">

                                <asp:LinkButton ID="btnGuardarUsuario" 
                                    runat="server" 
                                    CssClass="btn btn-success start"  
                                   
                                  > 
                                    <span aria-hidden="true" class="glyphicon glyphicon-user"></span> Guardar usuario
                                    </asp:LinkButton>
                            </div>
                        </div>



                    </div>
                </div>
            </div>
        </div>

        <!--END TEXT INPUT FIELD-->


    </div>
    <!-- /.row -->


</asp:Content>
