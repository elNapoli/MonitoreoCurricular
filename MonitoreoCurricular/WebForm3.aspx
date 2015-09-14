<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="WebForm3.aspx.vb" Inherits="MonitoreoCurricular.WebForm3" %>
<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script type="text/javascript">
        function AlertEliminar() {
            reset();
            alertify.confirm("This is a confirm dialog", function (e) {
                if (e) {
                    alertify.success("You've clicked OK");

                    __doPostBack($('#<%= BtnEliminar.ClientID%>').attr('name'), '');
                } else {
                    alertify.error("You've clicked Cancel");
                }
            });
            return false;
        }
        function pageLoad() {
            $('.chzn-select').chosen();
            $('#dp3').datepicker();
            console.log($('.chzn-select').chosen().val());

        }

        window.onload = pageLoad;

</script>


    <script type="text/javascript">
        function holamundo(data, selected) {
            //some code here
            var dato = data.split(".");

            jQuery(function ($) {
                for (var i = 0; i < dato.length - 1; i++) {
                    var ur = $('option[value="' + dato[i] + '"]');
                    $(ur).attr("selected", true);
                    if (selected == "Trude") {
                        $(ur).attr("disabled", true);

                    }
                    else {

                        $(ur).attr("disabled", false);
                    }


                }
                $(".chosen-select").trigger("chosen:updated");
                $(".chosen-select").trigger("liszt:updated");

            });


        }
    </script>

  
    
    <asp:ScriptManager ID="ScriptManager1" runat="server">


        <Scripts>
            <asp:ScriptReference Path="#" />
        </Scripts>
    </asp:ScriptManager>

                       
                   

                
                                <asp:LinkButton ID="BtnEliminar" 
                                    runat="server" 
                                    CssClass="btn btn-danger start" 
                                    onclientClick="return AlertEliminar()"   
                                    >
                                    <span aria-hidden="true" class="glyphicon glyphicon-trash"></span> Eliminar historial
                                    </asp:LinkButton>
                             
                     
                   
                   
         
         


</asp:Content>