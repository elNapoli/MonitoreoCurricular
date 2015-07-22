$(document).ready(function () {

   

    var miUploader = $("#PERRO1").pluploadQueue({
        // General settings
        runtimes: 'html5,flash,silverlight,html4',
        url: 'UploadHandler.ashx',
        chunk_size: '1mb',
        unique_names: true,

        // Resize images on client-side if we can
        resize: { width: 320, height: 240, quality: 90 },

        filters: {
   

            // Specify what files to browse for
            mime_types: [
                { title: "Archivos PDF", extensions: "pdf" }
            ]
        },



        // PreInit events, bound before any internal events
        preinit: {
            Init: function (up, info) {
                console.log('[Init]', 'Info:', info, 'Features:', up.features);
            },

            UploadFile: function (up, file) {
                console.log('[UploadFile]', file);

                // You can override settings before the file is uploaded
                // up.setOption('url', 'upload.php?id=' + file.id);
                // up.setOption('multipart_params', {param1 : 'value1', param2 : 'value2'});
            }
        },

        // Post init events, bound after the internal events
        init: {
            PostInit: function () {
                // Called after initialization is finished and internal event handlers bound
                console.log('[PostInit]');


            },

            Browse: function (up) {
                // Called when file picker is clicked
                console.log('[Browse]');
            },

            Refresh: function (up) {
                // Called when the position or dimensions of the picker change
                console.log('[Refresh]');
            },

            StateChanged: function (up) {
                // Called when the state of the queue is changed
                console.log('[StateChanged]', up.state == plupload.STARTED ? "STARTED" : "STOPPED");
            },

            QueueChanged: function (up) {
                // Called when queue is changed by adding or removing files
                console.log('[QueueChanged]');
            },

            OptionChanged: function (up, name, value, oldValue) {
                // Called when one of the configuration options is changed
                console.log('[OptionChanged]', 'Option Name: ', name, 'Value: ', value, 'Old Value: ', oldValue);
            },

            BeforeUpload: function (up, file) {
                // Called right before the upload for a given file starts, can be used to cancel it if required
                console.log('[BeforeUpload]', 'File: ', file);
            },

            UploadProgress: function (up, file) {
                // Called while file is being uploaded
                console.log('[UploadProgress]', 'File:', file, "Total:", up.total);
            },

            FileFiltered: function (up, file) {
                // Called when file successfully files all the filters
                console.log('[FileFiltered]', 'File:', file);
            },

            FilesAdded: function (up, files) {
                // Called when files are added to queue
                console.log('[FilesAdded]');

                plupload.each(files, function (file) {
                    console.log('  File:', file);
                });
            },

            FilesRemoved: function (up, files) {
                // Called when files are removed from queue
                console.log('[FilesRemoved]');

                plupload.each(files, function (file) {
                    console.log('  File:', file);
                });
            },

            FileUploaded: function (up, file, info) {
                // Called when file has finished uploading
                console.log('[FileUploaded] File:', file, "Info:", info);
            },

            ChunkUploaded: function (up, file, info) {
                // Called when file chunk has finished uploading
                console.log('[ChunkUploaded] File:', file, "Info:", info);
            },

            UploadComplete: function (up, files) {
                // Called when all files are either uploaded or failed
                console.log('[UploadComplete]');
            },

            Destroy: function (up) {
                // Called when uploader is destroyed
                console.log('[Destroy] ');
            },

            Error: function (up, args) {
                // Called when error occurs
                console.log('[Error] ', args);
            }
        }
    });




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
