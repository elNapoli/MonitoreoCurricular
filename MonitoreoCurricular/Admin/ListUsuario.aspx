<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="ListUsuario.aspx.vb" Inherits="MonitoreoCurricular.ListUsuario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 

       <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Usuarios</h5>
                  </header>
                  <div id="collapse4" class="body">
<table id="UsuarioTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>R.U.N.</th>
                <th>Nombre</th>
                <th>Apellido paterno</th> 
                <th>Apellido Materno</th>
                <th>Email</th>
                <th>rol</th>
  
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>R.U.N.</th>
                <th>Nombre</th>
                <th>Apellido paterno</th> 
                <th>Apellido Materno</th>
                <th>Email</th>
                <th>rol</th>
            </tr>
        </tfoot>
 
    </table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->
</asp:Content>
