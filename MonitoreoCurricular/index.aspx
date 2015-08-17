<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Layout.Master" CodeBehind="index.aspx.vb" Inherits="MonitoreoCurricular.index" %>

<%@  import Namespace="Models" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    Bienvenido <%
                   
                   
                   Dim us As New Usuario
                   us = Session.Item("USUARIO_ACTUAL")
                   
                   Response.Write(us.Rut.ToString + " " + us.Password + " " + us.Rol)
                   
                   %>
</asp:Content>
