﻿function format(d) {
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


function GetEmployeeDetails(uploader) {
    var Plan = $('#ContentPlaceHolder1_DDPlan').val();
    var Carrera = $('#ContentPlaceHolder1_DDCarrera').val();
    var Fecha = $('#ContentPlaceHolder1_FechaResolucion').val();
    var Hito = $('#ContentPlaceHolder1_DDHito').val();
    var Asignaturas = $('.chzn-select').chosen().val();
    var Descripcion = $('#Descripcion').val();
    var Antes = $('#antes').val();
    var Despues = $('#despues').val();

    var Historial = { "Plan": Plan, "Carrera": Carrera,"Fecha":Fecha,"Hito":Hito,"Asignaturas":Asignaturas,"Descripcion":Descripcion,"Antes":Antes,"Despues":Despues };
    $.ajax({
        type: "POST",
        url: "SubirResolucion.asmx/GuardarHistorial",
        data: JSON.stringify(Historial),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            
            if (response.d < 0) {
                swal("Error!", "Ha ocurrido un error al intentar guardar los datos", "error");
            }
            else {
                uploader.settings.multipart_params = { idNuevoHistorial: response.d };
                uploader.start();
        


                swal({
                    title: "Éxito!",
                    text: "Se ha guardado exitosamente el registro.",
                    type: "success",
                    showCancelButton: false,
                    closeOnConfirm: false,
                    showLoaderOnConfirm: true,
                },
                function () {
                    setTimeout(function () {
                        window.location = "HistorialId.aspx?IDHistorial=" + response.d;
                    }, 1000);
                });

                
   
              //
            }

        },
        failure: function (msg) {
            alert(msg);
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
    var Historial = {"idHistorial":idHistorial, "Plan": Plan, "Carrera": Carrera, "Fecha": Fecha, "Hito": Hito, "Asignaturas": Asignaturas, "Descripcion": Descripcion, "Antes": Antes, "Despues": Despues };
    $.ajax({
        type: "POST",
        url: "SubirResolucion.asmx/ActualizarHistorial",
        data: JSON.stringify(Historial),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {

            if (response.d < 0) {
                swal("Error!", "Ha ocurrido un error al intentar actualizar los datos", "error");
            }
            else {
   
                swal("Registro actualizado!", "Se ha actualizado exitosamente el registro", "success");
            }
           
        },
        failure: function (msg) {
            alert(msg);
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
  
    var Usuario = { "Rut": Rut, "Nombre": Nombre, "ApPaterno": ApPaterno, "ApMaterno": ApMaterno, "Email": Email, "Rol": Rol};
    $.ajax({
        type: "POST",
        url: "/SubirResolucion.asmx/ActualizarUsuario",
        data: JSON.stringify(Usuario),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {


            alert("Se ha actualizado exitosamente el registro")

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