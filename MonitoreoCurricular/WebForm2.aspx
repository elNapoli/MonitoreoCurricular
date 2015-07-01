<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="WebForm2.aspx.vb" Inherits="MonitoreoCurricular.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

                          <div class="form-group">
                        <label for="cp3" class="control-label col-lg-4">As component</label>
                        <div class="col-lg-3">
                          <div class="input-group color">
                            <input type="text" class="form-control" readonly data-color="rgb(255, 146, 180)" data-color-format="rgb" id="cp3">
                            <span class="input-group-addon" style="background-color: rgb(255, 146, 180)"><i
                                        class="fa fa-home"></i></span> 
                          </div><!-- /input-group -->
                        </div>
                      </div>
        <script>
            $(function () {
                Metis.formGeneral();
            });
    </script>
</asp:Content>
