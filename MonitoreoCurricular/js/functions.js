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
         
            uploader.settings.multipart_params = { idNuevoHistorial: response.d };
            uploader.start();
            alert("Se ha guardado exitosamente el registro")
            window.location = "HistorialId.aspx?IDHistorial=" + response.d;
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