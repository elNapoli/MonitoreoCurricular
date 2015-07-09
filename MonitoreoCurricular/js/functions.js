﻿function format(d) {
    var tabla = '<table cellpadding="5"cellspacing="0" border="3" style="padding-left:50px;">';

    $.each(d, function (key, value) {

        if (value instanceof Object) {

            tabla = tabla +
                '<tr>' +
                    '<td   colspan="2" align="center" >' + key + '</td>' +
                '</tr>';
            for (var i = 0; i < value.length; i++) {
                if (key == "Resoluciones") { console.log("hola"); }

                tabla = tabla +
            '<tr> <td>Código:</td>' +
            '<td>' + value[i].id + '</td></tr>' + '<tr>';

                if (key == "Resoluciones") {
                    tabla = tabla + '<td>Nombre:</td>' +
                        '<td><a href=/Resoluciones/' + value[i].path + '>' + value[i].nombre + '</a></td>' +
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


function GetEmployeeDetails() {
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
            var Employee = response.d;
            $("#spnEmployeeId").html(Employee.Id);
            $("#spnEmployeeName").html(Employee.Name);
            $("#spnSalary").html(Employee.Salary);
            $("#outputTable").show();
        },
        failure: function (msg) {
            alert(msg);
        }
    });
}