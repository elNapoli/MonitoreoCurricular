<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="VerResolucion.aspx.vb" Inherits="MonitoreoCurricular.VerResolucion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


       <div class="row">
              <div class="col-lg-12">
                <div class="box">
                  <header>
                    <div class="icons">
                      <i class="fa fa-table"></i>
                    </div>
                    <h5>Resoluciones</h5>
                  </header>
                  <div id="collapse4" class="body">
<table id="ResolucionTable" class="display" cellspacing="0" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>Plan</th>
                <th>Nombre Resolución</th> 
                <th>Facultad</th>
                <th>Escuela</th>
                <th>Carrera</th>
                <th>Hito</th>
                <th>Resolución</th>
            </tr>
        </thead>
 
        <tfoot>
            <tr>
                <th>ID</th>
                <th>Plan</th>
                <th>Nombre Resolución</th> 
                <th>Facultad</th>
                <th>Escuela</th>
                <th>Carrera</th>
                <th>Hito</th>
                <th>Resolución</th>
            </tr>
        </tfoot>
 
    </table>
                  </div>
                </div>
              </div>
            </div><!-- /.row -->

</asp:Content>
