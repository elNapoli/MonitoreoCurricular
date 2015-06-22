﻿<!DOCTYPE html>
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

	    function format(d) {
	        var tabla = '<table cellpadding="5"cellspacing="0" border="3" style="padding-left:50px;">';
                        
	        $.each(d, function (key, value) {
	            if (value instanceof Object) {

	                tabla = tabla + 
                        '<tr>' +
                            '<td   colspan="2" align="center" >'+key+'</td>' +
                        '</tr>';
	                for (var i = 0; i < value.length; i++) {
	                    tabla = tabla+
                    '<tr> <td>Código:</td>' +
                    '<td>' + value[i].id + '</td></tr>'+ '<tr>' +
                    '<td>Nombre:</td>' +
                    '<td>' + value[i].nombre + '</td>' +
                '</tr>';
	                }
	            }
	     
	            
	        });
	        tabla = tabla + '</table>';




	        return tabla;
	    }

	    $(document).ready(function () {
	        var table = $('#example').DataTable({
	            "ajax": "test.txt",
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
	            "order": [[1, 'asc']]
	        });

	        // Add event listener for opening and closing details
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


	</script>
</head>

<body class="dt-example">
	<div class="container">
		<section>
			<h1>DataTables example <span>Child rows (show extra / detailed information)</span></h1>

			<div class="info">
				<p>The DataTables API has a number of methods available for attaching child rows to a <em>parent</em> row in the DataTable. This can be used to show additional
				information about a row, useful for cases where you wish to convey more information about a row than there is space for in the host table.</p>

				<p>The example below makes use of the <a href="//datatables.net/reference/api/row().child"><code class="api" title=
				"DataTables API method">row().child<span>DT</span></code></a> methods to firstly check if a row is already displayed, and if so hide it (<a href=
				"//datatables.net/reference/api/row().child.hide()"><code class="api" title="DataTables API method">row().child.hide()<span>DT</span></code></a>), otherwise show
				it (<a href="//datatables.net/reference/api/row().child.show()"><code class="api" title="DataTables API method">row().child.show()<span>DT</span></code></a>). The
				content of the child row is, in this example, defined by the <code>formatDetails()</code> function, but you would replace that with whatever you wanted to show the
				content required, possibly including, for example, an Ajax call to the server to obtain the extra information to show.</p>
			</div>

			<table id="example" class="display" cellspacing="0" width="100%">
				<thead>
					<tr>
						<th></th>
						<th>id</th>
						<th>idPlan</th>
                        <th>idCarrera</th>
                        <th>fecha</th>
                        <th>hito</th>
                        <th>descripcion</th>
                        <th>antes</th>
                        <th>despues</th>

						
					</tr>
				</thead>

				<tfoot>
					<tr>
						<th></th>
						<th>id</th>
						<th>idPlan</th>
                        <th>idCarrera</th>
                        <th>fecha</th>
                        <th>hito</th>
                        <th>descripcion</th>
                        <th>antes</th>
                        <th>despues</th>
				
					</tr>
				</tfoot>
			</table>

			<ul class="tabs">
				<li class="active">Javascript</li>
				<li>HTML</li>
				<li>CSS</li>
				<li>Ajax</li>
				<li>Server-side script</li>
			</ul>

			<div class="tabs">
				<div class="js">
					<p>The Javascript shown below is used to initialise the table shown in this example:</p><code class="multiline language-js">/* Formatting function for row details - modify as you need */
function format ( d ) {
	// `d` is the original data object for the row
	return '&lt;table cellpadding=&quot;5&quot; cellspacing=&quot;0&quot; border=&quot;0&quot; style=&quot;padding-left:50px;&quot;&gt;'+
		'&lt;tr&gt;'+
			'&lt;td&gt;Full name:&lt;/td&gt;'+
			'&lt;td&gt;'+d.name+'&lt;/td&gt;'+
		'&lt;/tr&gt;'+
		'&lt;tr&gt;'+
			'&lt;td&gt;Extension number:&lt;/td&gt;'+
			'&lt;td&gt;'+d.extn+'&lt;/td&gt;'+
		'&lt;/tr&gt;'+
		'&lt;tr&gt;'+
			'&lt;td&gt;Extra info:&lt;/td&gt;'+
			'&lt;td&gt;And any further details here (images etc)...&lt;/td&gt;'+
		'&lt;/tr&gt;'+
	'&lt;/table&gt;';
}

$(document).ready(function() {
	var table = $('#example').DataTable( {
		&quot;ajax&quot;: &quot;../ajax/data/objects.txt&quot;,
		&quot;columns&quot;: [
			{
				&quot;className&quot;:      'details-control',
				&quot;orderable&quot;:      false,
				&quot;data&quot;:           null,
				&quot;defaultContent&quot;: ''
			},
			{ &quot;data&quot;: &quot;name&quot; },
			{ &quot;data&quot;: &quot;position&quot; },
			{ &quot;data&quot;: &quot;office&quot; },
			{ &quot;data&quot;: &quot;salary&quot; }
		],
		&quot;order&quot;: [[1, 'asc']]
	} );
	
	// Add event listener for opening and closing details
	$('#example tbody').on('click', 'td.details-control', function () {
		var tr = $(this).closest('tr');
		var row = table.row( tr );

		if ( row.child.isShown() ) {
			// This row is already open - close it
			row.child.hide();
			tr.removeClass('shown');
		}
		else {
			// Open this row
			row.child( format(row.data()) ).show();
			tr.addClass('shown');
		}
	} );
} );</code>

					<p>In addition to the above code, the following Javascript library files are loaded for use in this example:</p>

					<ul>
						<li><a href="../../media/js/jquery.js">../../media/js/jquery.js</a></li>
						<li><a href="../../media/js/jquery.dataTables.js">../../media/js/jquery.dataTables.js</a></li>
					</ul>
				</div>

				<div class="table">
					<p>The HTML shown below is the raw HTML table element, before it has been enhanced by DataTables:</p>
				</div>

				<div class="css">
					<div>
						<p>This example uses a little bit of additional CSS beyond what is loaded from the library files (below), in order to correctly display the table. The
						additional CSS used is shown below:</p><code class="multiline language-css">td.details-control {
	background: url('../resources/details_open.png') no-repeat center center;
	cursor: pointer;
}
tr.shown td.details-control {
	background: url('../resources/details_close.png') no-repeat center center;
}</code>
					</div>

					<p>The following CSS library files are loaded for use in this example to provide the styling of the table:</p>

					<ul>
						<li><a href="../../media/css/jquery.dataTables.css">../../media/css/jquery.dataTables.css</a></li>
					</ul>
				</div>

				<div class="ajax">
					<p>This table loads data by Ajax. The latest data that has been loaded is shown below. This data will update automatically as any additional data is
					loaded.</p>
				</div>

				<div class="php">
					<p>The script used to perform the server-side processing for this table is shown below. Please note that this is just an example script using PHP. Server-side
					processing scripts can be written in any language, using <a href="//datatables.net/manual/server-side">the protocol described in the DataTables
					documentation</a>.</p>
				</div>
			</div>
		</section>
	</div>

	<section>
		<div class="footer">
			<div class="gradient"></div>

			<div class="liner">
				<h2>Other examples</h2>

				<div class="toc">
					<div class="toc-group">
						<h3><a href="../basic_init/index.html">Basic initialisation</a></h3>
						<ul class="toc">
							<li><a href="../basic_init/zero_configuration.html">Zero configuration</a></li>
							<li><a href="../basic_init/filter_only.html">Feature enable / disable</a></li>
							<li><a href="../basic_init/table_sorting.html">Default ordering (sorting)</a></li>
							<li><a href="../basic_init/multi_col_sort.html">Multi-column ordering</a></li>
							<li><a href="../basic_init/multiple_tables.html">Multiple tables</a></li>
							<li><a href="../basic_init/hidden_columns.html">Hidden columns</a></li>
							<li><a href="../basic_init/complex_header.html">Complex headers (rowspan and colspan)</a></li>
							<li><a href="../basic_init/dom.html">DOM positioning</a></li>
							<li><a href="../basic_init/flexible_width.html">Flexible table width</a></li>
							<li><a href="../basic_init/state_save.html">State saving</a></li>
							<li><a href="../basic_init/alt_pagination.html">Alternative pagination</a></li>
							<li><a href="../basic_init/scroll_y.html">Scroll - vertical</a></li>
							<li><a href="../basic_init/scroll_x.html">Scroll - horizontal</a></li>
							<li><a href="../basic_init/scroll_xy.html">Scroll - horizontal and vertical</a></li>
							<li><a href="../basic_init/scroll_y_theme.html">Scroll - vertical with jQuery UI ThemeRoller</a></li>
							<li><a href="../basic_init/comma-decimal.html">Language - Comma decimal place</a></li>
							<li><a href="../basic_init/language.html">Language options</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../advanced_init/index.html">Advanced initialisation</a></h3>
						<ul class="toc">
							<li><a href="../advanced_init/events_live.html">DOM / jQuery events</a></li>
							<li><a href="../advanced_init/dt_events.html">DataTables events</a></li>
							<li><a href="../advanced_init/column_render.html">Column rendering</a></li>
							<li><a href="../advanced_init/length_menu.html">Page length options</a></li>
							<li><a href="../advanced_init/dom_multiple_elements.html">Multiple table control elements</a></li>
							<li><a href="../advanced_init/complex_header.html">Complex headers (rowspan / colspan)</a></li>
							<li><a href="../advanced_init/object_dom_read.html">Read HTML to data objects</a></li>
							<li><a href="../advanced_init/html5-data-attributes.html">HTML5 data-* attributes - cell data</a></li>
							<li><a href="../advanced_init/html5-data-options.html">HTML5 data-* attributes - table options</a></li>
							<li><a href="../advanced_init/language_file.html">Language file</a></li>
							<li><a href="../advanced_init/defaults.html">Setting defaults</a></li>
							<li><a href="../advanced_init/row_callback.html">Row created callback</a></li>
							<li><a href="../advanced_init/row_grouping.html">Row grouping</a></li>
							<li><a href="../advanced_init/footer_callback.html">Footer callback</a></li>
							<li><a href="../advanced_init/dom_toolbar.html">Custom toolbar elements</a></li>
							<li><a href="../advanced_init/sort_direction_control.html">Order direction sequence control</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../styling/index.html">Styling</a></h3>
						<ul class="toc">
							<li><a href="../styling/display.html">Base style</a></li>
							<li><a href="../styling/no-classes.html">Base style - no styling classes</a></li>
							<li><a href="../styling/cell-border.html">Base style - cell borders</a></li>
							<li><a href="../styling/compact.html">Base style - compact</a></li>
							<li><a href="../styling/hover.html">Base style - hover</a></li>
							<li><a href="../styling/order-column.html">Base style - order-column</a></li>
							<li><a href="../styling/row-border.html">Base style - row borders</a></li>
							<li><a href="../styling/stripe.html">Base style - stripe</a></li>
							<li><a href="../styling/bootstrap.html">Bootstrap</a></li>
							<li><a href="../styling/foundation.html">Foundation</a></li>
							<li><a href="../styling/jqueryUI.html">jQuery UI ThemeRoller</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../data_sources/index.html">Data sources</a></h3>
						<ul class="toc">
							<li><a href="../data_sources/dom.html">HTML (DOM) sourced data</a></li>
							<li><a href="../data_sources/ajax.html">Ajax sourced data</a></li>
							<li><a href="../data_sources/js_array.html">Javascript sourced data</a></li>
							<li><a href="../data_sources/server_side.html">Server-side processing</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="./index.html">API</a></h3>
						<ul class="toc active">
							<li><a href="./add_row.html">Add rows</a></li>
							<li><a href="./multi_filter.html">Individual column searching (text inputs)</a></li>
							<li><a href="./multi_filter_select.html">Individual column searching (select inputs)</a></li>
							<li><a href="./highlight.html">Highlighting rows and columns</a></li>
							<li class="active"><a href="./row_details.html">Child rows (show extra / detailed information)</a></li>
							<li><a href="./select_row.html">Row selection (multiple rows)</a></li>
							<li><a href="./select_single_row.html">Row selection and deletion (single row)</a></li>
							<li><a href="./form.html">Form inputs</a></li>
							<li><a href="./counter_columns.html">Index column</a></li>
							<li><a href="./show_hide.html">Show / hide columns dynamically</a></li>
							<li><a href="./api_in_init.html">Using API in callbacks</a></li>
							<li><a href="./tabs_and_scrolling.html">Scrolling and jQuery UI tabs</a></li>
							<li><a href="./regex.html">Search API (regular expressions)</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../ajax/index.html">Ajax</a></h3>
						<ul class="toc">
							<li><a href="../ajax/simple.html">Ajax data source (arrays)</a></li>
							<li><a href="../ajax/objects.html">Ajax data source (objects)</a></li>
							<li><a href="../ajax/deep.html">Nested object data (objects)</a></li>
							<li><a href="../ajax/objects_subarrays.html">Nested object data (arrays)</a></li>
							<li><a href="../ajax/orthogonal-data.html">Orthogonal data</a></li>
							<li><a href="../ajax/null_data_source.html">Generated content for a column</a></li>
							<li><a href="../ajax/custom_data_property.html">Custom data source property</a></li>
							<li><a href="../ajax/custom_data_flat.html">Flat array data source</a></li>
							<li><a href="../ajax/defer_render.html">Deferred rendering for speed</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../server_side/index.html">Server-side</a></h3>
						<ul class="toc">
							<li><a href="../server_side/simple.html">Server-side processing</a></li>
							<li><a href="../server_side/custom_vars.html">Custom HTTP variables</a></li>
							<li><a href="../server_side/post.html">POST data</a></li>
							<li><a href="../server_side/ids.html">Automatic addition of row ID attributes</a></li>
							<li><a href="../server_side/object_data.html">Object data source</a></li>
							<li><a href="../server_side/row_details.html">Row details</a></li>
							<li><a href="../server_side/select_rows.html">Row selection</a></li>
							<li><a href="../server_side/jsonp.html">JSONP data source for remote domains</a></li>
							<li><a href="../server_side/defer_loading.html">Deferred loading of data</a></li>
							<li><a href="../server_side/pipeline.html">Pipelining data to reduce Ajax calls for paging</a></li>
						</ul>
					</div>

					<div class="toc-group">
						<h3><a href="../plug-ins/index.html">Plug-ins</a></h3>
						<ul class="toc">
							<li><a href="../plug-ins/api.html">API plug-in methods</a></li>
							<li><a href="../plug-ins/sorting_auto.html">Ordering plug-ins (with type detection)</a></li>
							<li><a href="../plug-ins/sorting_manual.html">Ordering plug-ins (no type detection)</a></li>
							<li><a href="../plug-ins/range_filtering.html">Custom filtering - range search</a></li>
							<li><a href="../plug-ins/dom_sort.html">Live DOM ordering</a></li>
						</ul>
					</div>
				</div>

				<div class="epilogue">
					<p>Please refer to the <a href="http://www.datatables.net">DataTables documentation</a> for full information about its API properties and methods.<br>
					Additionally, there are a wide range of <a href="http://www.datatables.net/extras">extras</a> and <a href="http://www.datatables.net/plug-ins">plug-ins</a>
					which extend the capabilities of DataTables.</p>

					<p class="copyright">DataTables designed and created by <a href="http://www.sprymedia.co.uk">SpryMedia Ltd</a> &#169; 2007-2015<br>
					DataTables is licensed under the <a href="http://www.datatables.net/mit">MIT license</a>.</p>
				</div>
			</div>
		</div>
	</section>
</body>
</html>