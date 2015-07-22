$(document).ready(function () {

   

    var uploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        container: "container", // ... or DOM Element itself
        browse_button: 'pickfiles', // you can pass in id..
        url: "SubirResolucion.asmx/hola",

        multipart: true,
        urlstream_upload: true,
        multipart_params: { directory: "test" },
        unique_names: true,

        filters: [
            {
                title: "Archivos pdf",
                extensions: "pdf"
            }
        ],
        init: {
            Error: function (up, err) {
                alert("\nError #" + err.code + ": " + err.message);
            },

            FilesAdded: function (up, files) {
                var fileList = $('#fileList');

                console.log(files);
                for (var i in files) {

                    var file = files[i];
                    fileList.prepend('<div id="' + file.id + '" class="file">' + file.name + '(' + plupload.formatSize(file.size) + ') <b></b></div>');

                }
            },
        }

    });

    uploader.init();



    $("#Btn_Guardar").click(function () {

        GetEmployeeDetails(uploader);
    });


    $("#submit").click(function (event) {
        $.ajax({
            type: "POST",
            url: "SubirResolucion.asmx/SayHello",
            data: "firstName=Aidy&lastName=F", // the data in form-encoded format, ie as it would appear on a querystring
            //contentType: "application/x-www-form-urlencoded; charset=UTF-8", // if you are using form encoding, this is default so you don't need to supply it
            dataType: "text", // the data type we want back, so text.  The data will come wrapped in xml
            success: function (data) {
                alert(data); // show the string that was returned, this will be the data inside the xml wrapper
            }
        });
    });
    var table = $('#example').DataTable({
        "ajax": "/JSON/Carrera_historial.txt",
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
        },
        "columns": [
            {
                "className": 'details-control',
                "orderable": false,
                "data": null,
                "defaultContent": ''
            },
            { "data": "id" },
            { "data": "idPlan" },
            { "data": "idCarrera" },
            { "data": "fecha" },
            { "data": "hito" },
            { "data": "descripcion" },
            { "data": "antes" },
            { "data": "despues" }
        ],

    });

   

    $("#CargarInformacion").click(function () {
        table.ajax.reload();


    });


    $('#example tbody').on('click', 'td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = table.row(tr);

        if (row.child.isShown()) {
            // This row is already open - close it
            row.child.hide();
            tr.removeClass('shown');
        }
        else {
            // Open this row
            row.child(format(row.data())).show();
            tr.addClass('shown');
        }
    });
});
