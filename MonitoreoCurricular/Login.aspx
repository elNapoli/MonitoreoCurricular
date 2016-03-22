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
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
       <script type="text/javascript" language="javascript" src="js/jquery.validate.js"></script>
    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="css/main.min.css">
          <link href="/css/parsley.css" rel="stylesheet">
        <style>

      .row {
        margin-top: 10px;
      }
      .code-block {
        margin-top: 20px;
      }
      .hidden {
        display: none;
      }
      .row h2 {
        color: #FF851B;
      }
      .row p {
        text-align: justify;
      }
      .first {
        padding-left: 15px;
        border-left: 2px solid #FF851B;
      }
      .second {
        padding-left: 15px;
        border-left: 2px solid #5bc0de;
      }
      .validate {
        margin-top: 10px;
      }
      h4 {
        margin-bottom: 10px;
      }
      .invalid-form-error-message {
        margin-top: 10px;
        padding: 5px;
      }
      .invalid-form-error-message.filled {
        border-left: 2px solid red;
      }
      p.parsley-success {
        color: #468847;
        background-color: #DFF0D8;
        border: 1px solid #D6E9C6;
      }
      p.parsley-error {
        color: #B94A48;
        background-color: #F2DEDE;
        border: 1px solid #EED3D7;
      }
    </style>
       <script type="text/javascript">

           $(document).ready(function () {
               window.Parsley.setLocale('es');
               $.listen('parsley:field:validate', function () {
                   validateFront();
               });


               var validateFront = function () {
                   if (true === $('#form_login').parsley().isValid()) {
                       $('.bs-callout-info').removeClass('hidden');
                       $('.bs-callout-warning').addClass('hidden');
                   } else {
                       $('.bs-callout-info').addClass('hidden');
                       $('.bs-callout-warning').removeClass('hidden');
                   }
               };


           });




    </script>
  </head>

  <body class="login">


       <form id="form_login"   runat="server">
           <div data-parsley-type="number">
                 <asp:ScriptManager runat="server" />  
                 <asp:UpdatePanel runat="server">
          <ContentTemplate>
           
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
 
            <asp:TextBox runat="server" ID="txt_Username"  placeholder="R.U.N." name="digits" class="form-control top"  data-parsley-type="number"   required/>
            <asp:TextBox runat="server" ID="txt_Password"  TextMode="Password"  placeholder="Contraseña" class="form-control top"   required/>
         
            <div class="checkbox">
              <label>
                  <asp:CheckBox id="rememberLogin" runat="server" /> Recordarme
           
        
              </label>
            </div>
         
                <div class="row">
                    <div class="col-md-offset-2">
                        <asp:Label style="color:red" id="statusLogin" runat="server" /> <br /> <br />
                    </div>
                </div>
                
       
            
              <asp:Button runat="server" OnClick="validar_Click" class="btn btn-lg btn-primary btn-block" Text="Iniciar Sesión" id="BtnLogin"/>


        </div>

      </div>
      <hr>
      <div class="text-center">
    <p class="label label-info">Recuerda que la primera vez que ingreses tu <br />
        contraseña serán los 6 primeros dígitos de tu RUT</p>
      </div>
    </div>

        
          </ContentTemplate>
      </asp:UpdatePanel>
                          
               </div>
           </form>
       <!--jQuery -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!--Bootstrap -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
                       
    <script src="/js/es_parley.js"></script>
     <script type="text/javascript" src="/js/parsley.js"></script>
     
  </body>
</html>
