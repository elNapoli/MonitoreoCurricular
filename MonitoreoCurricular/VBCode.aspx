<%@ Page Language="VB" AutoEventWireup="false" CodeFile="VBCode.aspx.vb" Inherits="VBCode" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<title>jQuery show progress bar on button click asp.net</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.2.js"></script>
<style type="text/css">
.sample
{
background-color:#DC5807;
border:1px solid black;
border-collapse:collapse;
color:White;
}
</style>
</head>
<body>
<form id="form1" runat="server">

<input type="button" id="btnSubmit" value="Submit" />
</form>
<script type="text/javascript">
    $(function () {
        $('#btnSubmit').click(function () {

        
                $.ajax({
                    type: "POST",
                    contentType: "application/json; charset=utf-8",
                    url: "VBCode.aspx/InsertData",
                 
                    success: function (data) {
                        var obj = data.d;
                        var Facultades   = {
                            data: []
                        };

                        var index;
                       // console.log(obj.length);
                        for (index = 0; index < obj.length; index++) {
                           
                           
                                Facultades.data.push({
                                    "id": obj[index].id,
                                    "nombre": obj[index].nombre
                                });
                            

                        }
                       


                        var json = JSON.stringify(Facultades);
                        console.log(json);
                       
                       
                    },
                    error: function (result) {
                        alert("Error");
                    }
                });
      
        })
    });
</script>
</body>
</html>

