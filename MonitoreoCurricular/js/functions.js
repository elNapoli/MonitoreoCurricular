function format(d) {
    var tabla = '<table cellpadding="5"cellspacing="0" border="3" style="padding-left:50px;">';

    $.each(d, function (key, value) {
    
        if (value instanceof Object) {
   
            tabla = tabla +
                '<tr>' +
                    '<td   colspan="2" align="center" >' + key + '</td>' +
                '</tr>';
            for (var i = 0; i < value.length; i++) {
        
            
                tabla = tabla +'<tr> <td>Código:</td>' +
            '<td>' + value[i].id + '</td></tr>' + '<tr>';

                if (key == "Resoluciones") {
                    var temp = value[i].path;
               
                    tabla = tabla + '<td>Nombre:</td>' +
                        '<td><a href=/Resoluciones/' + temp + '>' + value[i].nombre + '</a></td>' +
                    '</tr>';
                }
                else {
                    tabla = tabla + '<td>Nombre:</td>' +
                       '<td>' + value[i].nombre + '</td>' +
                   '</tr>';

                }

            }
        }


    });
    tabla = tabla + '</table>';




    return tabla;
}

$(function () {
    Metis.formGeneral();
    Metis.formWizard();
});
function validateFront(parametro) {

    if (true === $(parametro).parsley().isValid()) {
        $('.bs-callout-info').removeClass('hidden');
        $('.bs-callout-warning').addClass('hidden');
    } else {
        $('.bs-callout-info').addClass('hidden');
        $('.bs-callout-warning').removeClass('hidden');
    }
};

function GuardarResolucion(uploader) {
    var Plan = $('#ContentPlaceHolder1_DDPlan').val();
    var Carrera = $('#ContentPlaceHolder1_DDCarrera').val();
    var Fecha = $('#ContentPlaceHolder1_FechaResolucion').val();
    var Hito = $('#ContentPlaceHolder1_DDHito').val();
    var Asignaturas = $('.chzn-select').chosen().val();
    var Descripcion = $('#Descripcion').val();
    var Antes = $('#antes').val();
    var Despues = $('#despues').val();
    var Rut = $('#CookRut').val();
    var Resolucion = $('#ExisteResol').val();

    var Historial = { "Plan": Plan, "Carrera": Carrera, "Fecha": Fecha, "Hito": Hito, "Asignaturas": Asignaturas, "Descripcion": Descripcion, "Antes": Antes, "Despues": Despues, "Rut": Rut,"resolucion": Resolucion };
    $.ajax({
        type: "POST",
        url: "SubirResolucion.asmx/GuardarHistorial",
        data: JSON.stringify(Historial),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            

            if (response.d[0] == "0") {
                alertify.error(response.d[1]);

            }
            else {
                // Triggering bPopup when click event is fired
                $('#element_to_pop_up').bPopup({
                    opacity: 0.6,
                    positionStyle: 'fixed' //'fixed' or 'absolute'
                });
             
                uploader.settings.multipart_params = { idNuevoHistorial: response.d[0], RutUsuario:$('#CookRut').val()};
                uploader.start();
                uploader.bind("UploadComplete", function (up, files) {
                    window.location = "HistorialId.aspx?IDHistorial=" + response.d[0] + "&save='True'";

                });

        
            }
            
            

          //  alertify.alert("hola")
          // 
        },
        failure: function (msg) {
            alertify.error(msg);
        }
    });
}

function ActualizarHistorial() {
    var Plan = $('#ContentPlaceHolder1_DDPlan').val();
    var Carrera = $('#ContentPlaceHolder1_DDCarrera').val();
    var Fecha = $('#ContentPlaceHolder1_FechaResolucion').val();
    var Hito = $('#ContentPlaceHolder1_DDHito').val();
    var Asignaturas = $('.chzn-select').chosen().val();
    var Descripcion = $('#ContentPlaceHolder1_Descripcion').val();
    var Antes = $('#ContentPlaceHolder1_antes').val();
    var Despues = $('#ContentPlaceHolder1_despues').val();
    var idHistorial = $('#ContentPlaceHolder1_IdHistorialURL').val();
    var Rut = $('#CookRut').val();
    var Historial = { "idHistorial": idHistorial, "Plan": Plan, "Carrera": Carrera, "Fecha": Fecha, "Hito": Hito, "Asignaturas": Asignaturas, "Descripcion": Descripcion, "Antes": Antes, "Despues": Despues, "Rut": Rut };
    $.ajax({
        type: "POST",
        url: "SubirResolucion.asmx/ActualizarHistorial",
        data: JSON.stringify(Historial),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            if (response.d[0] == "1") {
                alertify.success(response.d[1]);
            }
            else {
                alertify.error(response.d[1])
            }
           

           
        },
        failure: function (msg) {
            alertify.error(msg, "", 0);
        }
    });
}



function ActualizarUsuario() {
    var Rut = $('#ContentPlaceHolder1_txt_run').val();
    var Nombre = $('#ContentPlaceHolder1_txt_nombre').val();
    var ApPaterno = $('#ContentPlaceHolder1_txt_apPaterno').val();
    var ApMaterno = $('#ContentPlaceHolder1_txt_apMaterno').val();
    var Email = $('#ContentPlaceHolder1_txt_email').val();
    var Rol = $('#ContentPlaceHolder1_DDRol').val();
    var Rut = $('#CookRut').val();
    var Usuario = { "Rut": Rut, "Nombre": Nombre, "ApPaterno": ApPaterno, "ApMaterno": ApMaterno, "Email": Email, "Rol": Rol, "rutLogin": Rut };
    $.ajax({
        type: "POST",
        url: "/SubirResolucion.asmx/ActualizarUsuario",
        data: JSON.stringify(Usuario),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {


            if (response.d[0] == "1") {
                alertify.success(response.d[1]);
            }
            else {
                alertify.error(response.d[1])
            }

        },
        failure: function (msg) {
            alert(msg);
        }
    });
}
function CargarJsonTable(table) {
    var carreraID = $("#ContentPlaceHolder1_DDCarrera").val()
    var Datos = { "carreraID": carreraID };
  $.ajax({
        type: "POST",
        url: "HistorialCurricular.asmx/CargarHistorialPorCarrera",
        data: JSON.stringify(Datos),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            table.ajax.reload();
        },
        failure: function (msg) {
            alert(msg);
        }
    });
}