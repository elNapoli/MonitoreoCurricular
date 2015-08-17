<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="MonitoreoCurricular.Login" %>

<!DOCTYPE html>

<html lang="en">
  <head runat="server">
    <meta charset="UTF-8">
    <title>Login Page</title>
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="css/main.min.css">
  </head>
  <body class="login">
       <form id="form1" runat="server">
    <div class="form-signin">
      <div class="text-center">
        <p>Sistema de Apoyo al Monitoreo curricular</p>
      </div>
      <hr>
      <div class="tab-content">
        <div id="login" class="tab-pane active">
     
            <p class="text-muted text-center">
              Ingrese su R.U.N. y contraseña
            </p>
 
            <asp:TextBox runat="server" ID="txt_Username"  placeholder="R.U.N." class="form-control top"/>
            <asp:TextBox runat="server" ID="txt_Password"  TextMode="Password"  placeholder="Contraseña" class="form-control top"/>
         
            <div class="checkbox">
              <label>
                <input type="checkbox"> Remember Me
              </label>
            </div>
       
        
              <asp:Button runat="server" OnClick="validar_Click" class="btn btn-lg btn-primary btn-block" Text="Iniciar Sesión" id="BtnLogin"/>
        
        </div>

      </div>
      <hr>
      <div class="text-center">
        <ul class="list-inline">
          <li> <a class="text-muted" href="#login" data-toggle="tab">Login</a>  </li>
          <li> <a class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a>  </li>
          <li> <a class="text-muted" href="#signup" data-toggle="tab">Signup</a>  </li>
        </ul>
      </div>
    </div>

    <!--jQuery -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!--Bootstrap -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>

           </form>
  </body>
</html>
