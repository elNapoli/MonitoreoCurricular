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

                document.getElementById('uploadfiles').onclick = function () {
                    miUploader.start();
                    return false;
                };
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
        "searching":false,
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

        CargarJsonTable(table);
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
