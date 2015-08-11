$(document).ready(function () {
    var miUploader = new plupload.Uploader({
        runtimes: 'html5,flash,silverlight,html4',
        browse_button: 'pickfiles', // you can pass an id...
        container: 'container', // ... or DOM Element itself
        url: 'UploadHandler.ashx',
        flash_swf_url: '../js/Moxie.swf',
        silverlight_xap_url: '../js/Moxie.xap',
        unique_names:true,

        filters: {
            mime_types: [
                { title: "Adobe Acrobat Document", extensions: "pdf" }
            ]
        },

        init: {
            PostInit: function () {
                document.getElementById('filelist').innerHTML = '';

            },

            FilesAdded: function (up, files) {
             
                plupload.each(files, function (file) {
                    document.getElementById('filelist').innerHTML += '<div id="' + file.id + '" class="file"><a href="/Resoluciones/'+file.name+'">' + file.name + ' (' + plupload.formatSize(file.size) + ') </a><b></b></div>';
                });
            },

            UploadProgress: function (up, file) {
                document.getElementById(file.id).getElementsByTagName('b')[0].innerHTML = '<span>' + file.percent + "%</span>";
            },
            
            Error: function (up, err) {
                alert("\nError #" + err.code + ": " + err.message);
            }
        }
    });

    miUploader.init();

    $("#Btn_Guardar").click(function () {

        GetEmployeeDetails(miUploader);
    });

    $("#perro").click(function () {
        ActualizarHistorial();
 
    });

    $("#btnEditar").click(function () {
        alert("hola")

    })

    var HistorialTable = $('#HistorialTable').DataTable({
        "ajax": "/JSON/Carrera_historial.txt",
        "searching": false,
        "scrollX": true,
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

            { "data": "idPlan" },
            { "data": "fecha" },
            { "data": "hito" },
            { "data": "descripcion" },
            { "data": "antes" },
            { "data": "despues" }
        ],

    });

    $("#ContentPlaceHolder1_DDCarrera").change(function () {

        CargarJsonTable(HistorialTable);
    });


    $('#HistorialTable tbody').on('click', 'td.details-control', function () {
        var tr = $(this).closest('tr');
        var row = HistorialTable.row(tr);

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



    var ResolucionTable = $('#ResolucionTable').DataTable({
        "ajax": "/JSON/Todas_resoluciones.txt",
     
        "scrollX": true,
        "language": {
            "url": "//cdn.datatables.net/plug-ins/9dcbecd42ad/i18n/Spanish.json"
        },
        "aoColumns": [
             {
                 "data": "idHistorial", "render": function (data, type, row, meta) {
                     return '<a href="HistorialId.aspx?IDHistorial=' + data + '">' + data + '</a>';
                 }
             },
             { "data": "idPlan" },
             { "data": "nombre" },
             { "data": "nombreFacultad" },
             { "data": "nombreEscuela" },
             { "data": "nombreCarrera" },
             { "data": "hito" },
             { "data": null, "defaultContent": "<a href='#' id='rel'>Ver resolución</a>" }
        ],
     
        initComplete: function () {
            this.api().columns().every(function () {
                var column = this;
                var select = $('<select class="form-control"><option value=""></option></select>')
                    .appendTo($(column.footer()).empty())
                    .on('change', function () {
                        var val = $.fn.dataTable.util.escapeRegex(
                            $(this).val()
                        );

                        column
                            .search(val ? '^' + val + '$' : '', true, false)
                            .draw();
                    });

                column.data().unique().sort().each(function (d, j) {
                    select.append('<option value="' + d + '">' + d + '</option>')
                });
            });
        }
    });

    $('#ResolucionTable tbody').on('click', '#rel', function () {
        var data = ResolucionTable.row($(this).parents('tr')).data();
     
        window.location = "Resoluciones/" + data.path;
        console.log(data.idPlan);
    });








});

