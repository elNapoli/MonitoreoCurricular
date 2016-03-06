<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="bitacora.aspx.vb" Inherits="MonitoreoCurricular.bitacora" %>
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
<table id="bitacoraTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Código de error</th>
                <th>Mensaje de error</th> 
                <th>Fecha del error</th>
                <th>Rut del usuario que originó el error</th>
  
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Código de error</th>
                <th>Mensaje de error</th> 
                <th>Fecha del error</th>
                <th>Rut del usuario que originó el error</th>
            </tr>
        </tfoot>
 
    </table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->


</asp:Content>


