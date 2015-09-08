<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="viewUser.aspx.vb" Inherits="MonitoreoCurricular.viewUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script>
        $(document).ready(function () {
            $("#ContentPlaceHolder1_txt_div").val($.Rut.getDigito($("#ContentPlaceHolder1_txt_run").val()));
        })

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
                </header>
                <div id="div-1" class="body">
                    <div class="form-horizontal">


        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>


                        <div class="form-group">
                            <label for="text1" class="control-label col-lg-4">R.U.N.</label>
                            <div class="col-lg-8">
                                <div class="col-lg-4"> 
                                      <asp:TextBox runat="server"  ID="txt_run" readonly class="form-control"/>

                                </div>
                                <div class="col-lg-2"> 

                                        <asp:TextBox runat="server" MaxLength="1" readonly ID="txt_div" class="form-control"/>
                                </div>
       
                            </div>
                      </div>



                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Nombre</label>
                        <div class="col-lg-8">
                            <asp:TextBox runat="server"  class="form-control" ID="txt_nombre"/>
  
                        </div>
                      </div>

                       <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Apellido paterno</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server"  class="form-control" ID="txt_apPaterno"/>
                        </div>
                      </div>


                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Apellido materno</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server"  class="form-control" ID="txt_apMaterno"/>
                        </div>
                      </div>




                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Email</label>
                        <div class="col-lg-8">
                          <asp:TextBox runat="server"  class="form-control" ID="txt_email"/>
                        </div>
                      </div>


                        <div class="form-group">
                        <label for="pass1" class="control-label col-lg-4">Rol</label>
                        <div class="col-lg-8">
                            <asp:DropDownList runat="server"  ID="DDRol" class="form-control" >
                                <asp:ListItem value="" Text="Seleccione rol" />
                                <asp:ListItem value="1" Text="Administrador" />
                                <asp:ListItem Value="2" Text="Usuario" />
                            </asp:DropDownList>
                        </div>
                      </div>


                                                <div class="form-group">
                            <asp:TextBox Style="visibility:hidden" runat="server" ID="IdHistorialURL"></asp:TextBox>
                            <div class="col-lg-3">

                               </div>
                            <div class="col-lg-3">
                                   <asp:LinkButton ID="BtnEditar" 
                                    runat="server" 
                                    CssClass="btn btn-info start"  
                                   OnClick="BtnEditar_Click"
                                   > 
                                    <span aria-hidden="true" class="glyphicon glyphicon-edit"></span> Editar historial
                                    </asp:LinkButton>



                                <asp:LinkButton ID="BtnActualizar" 
                                    runat="server" 
                                    CssClass="btn btn-primary start"  
                                    visible="false"
                                         OnClientClick="ActualizarUsuario()"
                                    onClick="BtnActualizar_Click"
                                  > 
                                    <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span>  Actualizar historial
                                    </asp:LinkButton>


                                    </div>
                         
                            <div class="col-lg-3">
                                <asp:LinkButton ID="BtnEliminar" 
                                    runat="server" 
                                    CssClass="btn btn-danger start"  
                                    OnClick="BtnEliminar_Click"
                                   >
                                    <span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Eliminar historial
                                    </asp:LinkButton>
                                </div>
                            <div class="col-lg-3">

                          </div>
                        </div>
                        <!-- /.form-group -->
                    </ContentTemplate>
    </asp:UpdatePanel>
                    </div>
                </div>
            </div>
        </div>

        <!--END TEXT INPUT FIELD-->


    </div>
    <!-- /.row -->

</asp:Content>
