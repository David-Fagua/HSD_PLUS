<%-- 
    Document   : listar
    Created on : 1/12/2019, 07:13:45 PM
    Author     : SAM
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Usuarios"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.UsuariosDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Listar Roles</title>
		<meta name="description" content="Christian Gámez Udemy" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

                <%@include file="css.jsp"  %>
	</head>

	<body class="no-skin">
		<div id="navbar" style="background-color: #000000;" class=" navbar navbar-default          ace-save-state">
			<div class="navbar-container ace-save-state" id="navbar-container">
				<button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
					<span class="sr-only">Toggle sidebar</span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>

					<span class="icon-bar"></span>
				</button>

				<div class="navbar-header pull-left">
					<a href="index.jsp" class="navbar-brand">
						<small>
							<img src="assets/images/Logo/Logo.png" width="35" height="35" alt="HSD PLUS">
							HSD_Plus
						</small>
					</a>
				</div>

				<div class="navbar-buttons navbar-header pull-right" role="navigation">
					<ul class="nav ace-nav">
						<li class="Black  dropdown-modal">
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-tasks"></i>
								<span class="badge badge-grey">4</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-check"></i>
									4 Tasks to complete
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Software Update</span>
													<span class="pull-right">65%</span>
												</div>

												<div class="progress progress-mini">
													<div style="width:65%" class="progress-bar"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Hardware Upgrade</span>
													<span class="pull-right">35%</span>
												</div>

												<div class="progress progress-mini">
													<div style="width:35%" class="progress-bar progress-bar-danger"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Unit Testing</span>
													<span class="pull-right">15%</span>
												</div>

												<div class="progress progress-mini">
													<div style="width:15%" class="progress-bar progress-bar-warning"></div>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">Bug Fixes</span>
													<span class="pull-right">90%</span>
												</div>

												<div class="progress progress-mini progress-striped active">
													<div style="width:90%" class="progress-bar progress-bar-success"></div>
												</div>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See tasks with details
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						<li class="black dropdown-modal" >
							<a data-toggle="dropdown" class="dropdown-toggle" href="#">
								<i class="ace-icon fa fa-bell icon-animated-bell"></i>
								<span class="badge badge-important">8</span>
							</a>

							<ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
								<li class="dropdown-header">
									<i class="ace-icon fa fa-exclamation-triangle"></i>
									8 Notifications
								</li>

								<li class="dropdown-content">
									<ul class="dropdown-menu dropdown-navbar navbar-pink">
										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>
														New Comments
													</span>
													<span class="pull-right badge badge-info">+12</span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<i class="btn btn-xs btn-primary fa fa-user"></i>
												Bob just signed up as an editor ...
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-success fa fa-shopping-cart"></i>
														New Orders
													</span>
													<span class="pull-right badge badge-success">+8</span>
												</div>
											</a>
										</li>

										<li>
											<a href="#">
												<div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-info fa fa-twitter"></i>
														Followers
													</span>
													<span class="pull-right badge badge-info">+11</span>
												</div>
											</a>
										</li>
									</ul>
								</li>

								<li class="dropdown-footer">
									<a href="#">
										See all notifications
										<i class="ace-icon fa fa-arrow-right"></i>
									</a>
								</li>
							</ul>
						</li>

						

						<li class="light- dropdown-modal">
							<a data-toggle="dropdown" href="#" class="dropdown-toggle">
								<img class="nav-user-photo" src="assets/images/avatars/user.jpg" alt="Samuel's Photo" />
								<span class="user-info">
									<small>Bienvenido</small>
									Samuel Salguero
								</span>

								<i class="ace-icon fa fa-caret-down"></i>
							</a>

							<ul class="user-menu dropdown-menu-right dropdown-menu dropdown-blue dropdown-caret dropdown-close">
								<li>
									<a href="#">
										<i class="ace-icon fa fa-cog"></i>
										Settings
									</a>
								</li>

								<li>
									<a href="profile.html">
										<i class="ace-icon fa fa-user"></i>
										Profile
									</a>
								</li>

								<li class="divider"></li>

								<li>
									<a href="#">
										<i class="ace-icon fa fa-power-off"></i>
										Logout
									</a>
								</li>
							</ul>
						</li>
					</ul>
				</div>
			</div><!-- /.navbar-container -->
		</div>

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>

			<div id="sidebar" class="sidebar                  responsive                    ace-save-state">
				<script type="text/javascript">
					try{ace.settings.loadState('sidebar')}catch(e){}
				</script>

				<div class="sidebar-shortcuts" id="sidebar-shortcuts">
                                    <div class="nav-search" id="nav-search">
                                        <form class="form-search">
                                            <span class="input-icon">
                                                <input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                                                <i class="ace-icon fa fa-search nav-search-icon"></i>
                                            </span>
                                        </form>
                                    </div><!-- /.nav-search -->
				</div>

				<ul class="nav nav-list">
					<li class="">
						<a href="index.jsp">
                                                    <center>
							<i class="fa fa-eye" aria-hidden="true"></i>
							<span class="menu-text"> Inicio </span>
                                                    </center>
						</a>

						<b class="arrow"></b>
					</li>
                                        
                                        <li class="active">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-shopping-cart"></i>
							<span class="menu-text"> Registro Reservas </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							

                                                        
							<li class="">
								<a href="ControladorregistroReservas?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Registrar reserva
								</a>

								<b class="arrow"></b>
							</li>
                                                       
                                                        
                                                        
						</ul>
					</li>
                                        
                                        
                                        <li class="active">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa  fa-file-text"></i>
							<span class="menu-text"> Registro Ventas </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							

                                                        
							<li class="">
								<a href="ControladorregistroRegistro_ventas?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Registrar Ventas
								</a>

								<b class="arrow"></b>
							</li>
                                                       
                                                        
                                                        
						</ul>
					</li>
                                        
                                        
                                        <li class="active open">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-list-ol"></i>
							<span class="menu-text"> Inventario </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="active">
								<a href="ControladorUsuarios?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Usuarios 
								</a>

								<b class="arrow"></b>
							</li>

                                                        <li class="">
								<a href="ControladorInventario_general?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Inventario General
								</a>

								<b class="arrow"></b>
							</li>
							<li class="">
								<a href="ControladorProducto_proceso?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Producto en Proceso
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorProducto_final?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Producto Final
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorSobrantes?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Sobrantes
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorDesechos?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Desechos
								</a>

								<b class="arrow"></b>
							</li>
                                                       
						</ul>
					</li>
                                        
					<li class="active ">
						<a href="#" class="dropdown-toggle">
							<i class="menu-icon fa fa-sitemap"></i>
							<span class="menu-text"> Componentes </span>

							<b class="arrow fa fa-angle-down"></b>
						</a>

						<b class="arrow"></b>

						<ul class="submenu">
							<li class="active">
								<a href="ControladorTipo_documento?accion=listar">Tipo Documento</a>

								<b class="arrow"></b>
							</li>

							<li class="">
								<a href="ControladorRoles?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Registrar Rol
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorProveedor?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Registrar Proveedor
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorGrosor_hilo?accion=listar">
									<i class="menu-icon fa fa-caret-right"></i>
									Registrar Grosor de Hilo
								</a>

								<b class="arrow"></b>
							</li>
                                                        <li class="">
								<a href="ControladorCiudad?accion=listar">Listar Ciudad</a><br>
									

								<b class="arrow"></b>
							</li>
						</ul>
					</li>

				</ul><!-- /.nav-list -->

				<div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
					<i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
				</div>
			</div>

			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs"></div>

					<div class="page-content">
						<div class="ace-settings-container" id="ace-settings-container">
								
						</div><!-- /.ace-settings-container -->

						<div class="page-header">
							<h1>
								Tabla Usuarios
								
							</h1>
						</div><!-- /.page-header -->
                                                
                                                <div class="container">

                                                    <a class="btn btn-primary  btn-sm  " href="ControladorUsuarios?accion=add">Agregar Nuevo Usuario</a>
                                                    

                                                    <br>
                                                    <br>
                                                    <div>
                                                        <table id="dynamic-table" class="table table-striped table-bordered table-hover">
                                                            <thead class="text-center">
                                                                <tr>
                                                                    <th class="text-center hidden-400">ID User</th>
                                                                    <th class="text-center hidden-400">Nombre</th>
                                                                    <th class="text-center hidden-400">Apellido</th>
                                                                    <th class="text-center hidden-400">Pass</th>
                                                                    <th class="text-center hidden-400">Correo</th>
                                                                    <th class="text-center hidden-400">Rol</th>
                                                                    <th class="text-center hidden-400">Tipo de Documento</th>
                                                                    <th class="text-center hidden-400">Numero de Documento</th>
                                                                    <th class="text-center hidden-400">Telefono</th>
                                                                    <th class="text-center hidden-400">Ciudad</th>
                                                                    <th class="text-center hidden-400">Acciones</th>
                                                                </tr>
                                                            </thead>
                                                            <%
                                                                UsuariosDAO dao = new UsuariosDAO();
                                                                List<Usuarios> list = dao.listar();
                                                                Iterator<Usuarios> iter = list.iterator();
                                                                Usuarios usu = null;
                                                                while (iter.hasNext()) {
                                                                    usu = iter.next();

                                                            %>
                                                            <tbody>
                                                                <tr>
                                                                    <td class="text-center"><%= usu.getId_user()%></td>
                                                                    <td class="text-center"><%= usu.getNombre()%></td>
                                                                    <td class="text-center"><%= usu.getApellido()%></td>
                                                                    <td class="text-center"><%= usu.getPass()%></td>
                                                                    <td class="text-center"><%= usu.getCorreo()%></td>
                                                                    <td class="text-center"><%= usu.getRol()%></td>
                                                                    <td class="text-center"><%= usu.getTipo_documento()%></td>
                                                                    <td class="text-center"><%= usu.getNumero_documento()%></td>
                                                                    <td class="text-center"><%= usu.getTelefono()%></td>
                                                                    <td class="text-center"><%= usu.getCiudad()%></td>
                                                                    
                                                                    <td class="text-center">
                                                                        <a class="btn btn-warning ace-icon fa fa-pencil btn-xs bigger" href="ControladorUsuarios?accion=editar&id_user=<%= usu.getId_user()%>">Editar</a>
                                                                        <a class="btn btn-danger ace-icon fa fa-trash-o btn-xs bigger" href="ControladorUsuarios?accion=eliminar&id_user=<%= usu.getId_user()%>">Remover</a>
                                                                    </td>
                                                                </tr>
                                                                <%}%>
                                                            </tbody>
                                                        </table>
                                                    </div>

                                                </div>

						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
								<!-- /.row -->

								
								</div>

								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			

			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->
		<script src="assets/js/jquery.dataTables.min.js"></script>
		<script src="assets/js/jquery.dataTables.bootstrap.min.js"></script>
		<script src="assets/js/dataTables.buttons.min.js"></script>
		<script src="assets/js/buttons.flash.min.js"></script>
		<script src="assets/js/buttons.html5.min.js"></script>
		<script src="assets/js/buttons.print.min.js"></script>
		<script src="assets/js/buttons.colVis.min.js"></script>
		<script src="assets/js/dataTables.select.min.js"></script>

		<!-- ace scripts -->
		<script src="assets/js/ace-elements.min.js"></script>
		<script src="assets/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
				//initiate dataTables plugin
				var myTable = 
				$('#dynamic-table')
				//.wrap("<div class='dataTables_borderWrap' />")   //if you are applying horizontal scrolling (sScrollX)
				.DataTable( {
					bAutoWidth: false,
					"aoColumns": [
					  { "bSortable": false },
					  null, null,null, null, null,
					  { "bSortable": false }
					],
					"aaSorting": [],
					
					
					//"bProcessing": true,
			        //"bServerSide": true,
			        //"sAjaxSource": "http://127.0.0.1/table.php"	,
			
					//,
					//"sScrollY": "200px",
					//"bPaginate": false,
			
					//"sScrollX": "100%",
					//"sScrollXInner": "120%",
					//"bScrollCollapse": true,
					//Note: if you are applying horizontal scrolling (sScrollX) on a ".table-bordered"
					//you may want to wrap the table inside a "div.dataTables_borderWrap" element
			
					//"iDisplayLength": 50
			
			
					select: {
						style: 'multi'
					}
			    } );
			
				
				
				$.fn.dataTable.Buttons.defaults.dom.container.className = 'dt-buttons btn-overlap btn-group btn-overlap';
				
				new $.fn.dataTable.Buttons( myTable, {
					buttons: [
					  {
						"extend": "colvis",
						"text": "<i class='fa fa-search bigger-110 blue'></i> <span class='hidden'>Show/hide columns</span>",
						"className": "btn btn-white btn-primary btn-bold",
						columns: ':not(:first):not(:last)'
					  },
					  {
						"extend": "copy",
						"text": "<i class='fa fa-copy bigger-110 pink'></i> <span class='hidden'>Copy to clipboard</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "csv",
						"text": "<i class='fa fa-database bigger-110 orange'></i> <span class='hidden'>Export to CSV</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "excel",
						"text": "<i class='fa fa-file-excel-o bigger-110 green'></i> <span class='hidden'>Export to Excel</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "pdf",
						"text": "<i class='fa fa-file-pdf-o bigger-110 red'></i> <span class='hidden'>Export to PDF</span>",
						"className": "btn btn-white btn-primary btn-bold"
					  },
					  {
						"extend": "print",
						"text": "<i class='fa fa-print bigger-110 grey'></i> <span class='hidden'>Print</span>",
						"className": "btn btn-white btn-primary btn-bold",
						autoPrint: false,
						message: 'This print was produced using the Print button for DataTables'
					  }		  
					]
				} );
				myTable.buttons().container().appendTo( $('.tableTools-container') );
				
				//style the message box
				var defaultCopyAction = myTable.button(1).action();
				myTable.button(1).action(function (e, dt, button, config) {
					defaultCopyAction(e, dt, button, config);
					$('.dt-button-info').addClass('gritter-item-wrapper gritter-info gritter-center white');
				});
				
				
				var defaultColvisAction = myTable.button(0).action();
				myTable.button(0).action(function (e, dt, button, config) {
					
					defaultColvisAction(e, dt, button, config);
					
					
					if($('.dt-button-collection > .dropdown-menu').length == 0) {
						$('.dt-button-collection')
						.wrapInner('<ul class="dropdown-menu dropdown-light dropdown-caret dropdown-caret" />')
						.find('a').attr('href', '#').wrap("<li />")
					}
					$('.dt-button-collection').appendTo('.tableTools-container .dt-buttons')
				});
			
				////
			
				setTimeout(function() {
					$($('.tableTools-container')).find('a.dt-button').each(function() {
						var div = $(this).find(' > div').first();
						if(div.length == 1) div.tooltip({container: 'body', title: div.parent().text()});
						else $(this).tooltip({container: 'body', title: $(this).text()});
					});
				}, 500);
				
				
				
				
				
				myTable.on( 'select', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', true);
					}
				} );
				myTable.on( 'deselect', function ( e, dt, type, index ) {
					if ( type === 'row' ) {
						$( myTable.row( index ).node() ).find('input:checkbox').prop('checked', false);
					}
				} );
			
			
			
			
				/////////////////////////////////
				//table checkboxes
				$('th input[type=checkbox], td input[type=checkbox]').prop('checked', false);
				
				//select/deselect all rows according to table header checkbox
				$('#dynamic-table > thead > tr > th input[type=checkbox], #dynamic-table_wrapper input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$('#dynamic-table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) myTable.row(row).select();
						else  myTable.row(row).deselect();
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#dynamic-table').on('click', 'td input[type=checkbox]' , function(){
					var row = $(this).closest('tr').get(0);
					if(this.checked) myTable.row(row).deselect();
					else myTable.row(row).select();
				});
			
			
			
				$(document).on('click', '#dynamic-table .dropdown-toggle', function(e) {
					e.stopImmediatePropagation();
					e.stopPropagation();
					e.preventDefault();
				});
				
				
				
				//And for the first simple table, which doesn't have TableTools or dataTables
				//select/deselect all rows according to table header checkbox
				var active_class = 'active';
				$('#simple-table > thead > tr > th input[type=checkbox]').eq(0).on('click', function(){
					var th_checked = this.checked;//checkbox inside "TH" table header
					
					$(this).closest('table').find('tbody > tr').each(function(){
						var row = this;
						if(th_checked) $(row).addClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', true);
						else $(row).removeClass(active_class).find('input[type=checkbox]').eq(0).prop('checked', false);
					});
				});
				
				//select/deselect a row when the checkbox is checked/unchecked
				$('#simple-table').on('click', 'td input[type=checkbox]' , function(){
					var $row = $(this).closest('tr');
					if($row.is('.detail-row ')) return;
					if(this.checked) $row.addClass(active_class);
					else $row.removeClass(active_class);
				});
			
				
			
				/********************************/
				//add tooltip for small view action buttons in dropdown menu
				$('[data-rel="tooltip"]').tooltip({placement: tooltip_placement});
				
				//tooltip placement on right or left
				function tooltip_placement(context, source) {
					var $source = $(source);
					var $parent = $source.closest('table')
					var off1 = $parent.offset();
					var w1 = $parent.width();
			
					var off2 = $source.offset();
					//var w2 = $source.width();
			
					if( parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2) ) return 'right';
					return 'left';
				}
				
				
				
				
				/***************/
				$('.show-details-btn').on('click', function(e) {
					e.preventDefault();
					$(this).closest('tr').next().toggleClass('open');
					$(this).find(ace.vars['.icon']).toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
				});
				/***************/
				
				
				
				
				
				/**
				//add horizontal scrollbars to a simple table
				$('#simple-table').css({'width':'2000px', 'max-width': 'none'}).wrap('<div style="width: 1000px;" />').parent().ace_scroll(
				  {
					horizontal: true,
					styleClass: 'scroll-top scroll-dark scroll-visible',//show the scrollbars on top(default is bottom)
					size: 2000,
					mouseWheelLock: true
				  }
				).css('padding-top', '12px');
				*/
			
			
			})
		</script>
	</body>
</html>



