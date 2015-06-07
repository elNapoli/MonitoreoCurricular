<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="demoTable.aspx.vb" Inherits="MonitoreoCurricular.demoTable" %>

<!DOCTYPE html>

<html>
<head>
	<meta charset="utf-8">
	<link rel="shortcut icon" type="image/ico" href="http://www.datatables.net/favicon.ico">
	<meta name="viewport" content="initial-scale=1.0, maximum-scale=2.0">

	<title>DataTables example - Child rows (show extra / detailed information)</title>
	<link rel="stylesheet" type="text/css" href="css/jquery.dataTables.css">
	<link rel="stylesheet" type="text/css" href="css/shCore.css">
	<link rel="stylesheet" type="text/css" href="css/demo.css">
	<style type="text/css" class="init">

    td.details-control {
	    background: url('img/details_open.png') no-repeat center center;
	    cursor: pointer;
    }
    tr.shown td.details-control {
	    background: url('img/details_close.png') no-repeat center center;
    }

	</style>
	 <!--jQuery -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
	<script type="text/javascript" language="javascript" src="js/jquery.dataTables.js"></script>
	<script type="text/javascript" language="javascript" src="js/shCore.js"></script>
	<script type="text/javascript" language="javascript" src="js/demo.js"></script>
	<script type="text/javascript" language="javascript" class="init">


	    /* Formatting function for row details - modify as you need */
	    function format(d) {
	        // `d` is the original data object for the row
	        return '<table id="example22" cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">' +
                '<tr>' +
                    '<td>Full name:</td>' +
                    '<td>' + d.name + '</td>' +
                '</tr>' +
                '<tr>' +
                    '<td>Extension number:</td>' +
                    '<td>' + d.extn + '</td>' +
                '</tr>' +
                '<tr>' +
                    '<td>Extra info:</td>' +
                    '<td>And any further details here (images etc)...</td>' +
                '</tr>' +
            '</table>';
	    }

	    $(document).ready(function () {

	        var table = $('#example').DataTable({
	            searching: false,
	            "language": {
	                "url": "//cdn.datatables.net/plug-ins/1.10.7/i18n/Spanish.json"
	            },
	            "columnDefs": [{
	                "searchable": false,
	                "className": 'details-control',
	                "orderable": false,
	                "targets": 0
	            }],
	            "order": [[1, 'asc']]
	        });

	        // Add event listener for opening and closing details
	        $('#example').on('click', 'td.details-control', function () {
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


	</script>
</head>

<body class="dt-example">
	<div class="container">
		<section>

			<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th></th>
						<th>Name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Salary</th>
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th></th>
						<th>Name</th>
						<th>Position</th>
						<th>Office</th>
						<th>Salary</th>
					</tr>
				</tfoot>

				<tbody>
					<tr>
						<td > </td>
						<td>perro Architect</td>
						<td>Edinburgh</td>
						<td>61</td>
						<td>2011/04/25</td>
						
					</tr>
					<tr>
						<td> </td>
						<td>gato</td>
						<td>Tokyo</td>
						<td>63</td>
						<td>2011/07/25</td>
					
					</tr>
				</tbody>
			</table>

			<ul class="tabs">
				<li class="active">Javascript</li>
				<li>HTML</li>
				<li>CSS</li>
				<li>Ajax</li>
				<li>Server-side script</li>
			</ul>

	
		</section>
	</div>

</body>
</html>