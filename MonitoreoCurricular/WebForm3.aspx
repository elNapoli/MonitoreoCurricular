<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="WebForm3.aspx.vb" Inherits="MonitoreoCurricular.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
 
        <asp:TextBox ID="nick"  runat="server"></asp:TextBox>
    <asp:TextBox ID="TextBox1" TextMode="Password" runat="server"></asp:TextBox>
    <asp:Button Text="validar" runat="server" id="validar" OnClick="validar_Click"/>
    

</asp:Content>
