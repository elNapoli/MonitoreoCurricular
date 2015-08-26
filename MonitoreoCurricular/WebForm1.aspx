<%@ Page Title="" Language="vb" AutoEventWireup="false" MasterPageFile="~/Site1.Master" CodeBehind="WebForm1.aspx.vb" Inherits="MonitoreoCurricular.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <html>
<head>
<meta charset="utf-8">
<title>Test for jQuery validate() plugin</title>

<link rel="stylesheet" media="screen" href="css/screen.css">

        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.validate.js"></script>



</head>
<body>
     <form method="post" id="myForm">

    <p>

        Nombre

        <input type="text" id="nombre" name="nombre" class="required" />

    </p>

    <p>

        Edad

        <input type="text" id="edad" name="edad" class="required digits" />

    </p>

    <p>

        <input type="submit" value="Enviar" />

    </p>

    </form>

    <script type="text/javascript">

        $().ready(function () {

            $("#myForm").validate({ debug: true });

        });

    </script>
</body>
</html>
</asp:Content>
