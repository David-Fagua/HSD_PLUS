<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Inicio</title>

        <link rel="icon" type="image/png" href="assets/Img/Logo.png">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/metisMenu.min.css" rel="stylesheet">
        <link href="assets/css/timeline.css" rel="stylesheet">
        <link href="assets/css/startmin.css" rel="stylesheet">
        <link href="assets/css/morris.css" rel="stylesheet">
        <link href="assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>

        <div id="wrapper">
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="Inicio.jsp"><i class="fa fa-home fa-fw"></i> Inicio</a></li>
                </ul>
                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown navbar-inverse">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> Nueva Reserva N°7
                                        <span class="pull-right text-muted small">Hace 4 minutos</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> Nueva Reserva N°6
                                        <span class="pull-right text-muted small">Hace 1 hora</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> Nueva Reserva N°5
                                        <span class="pull-right text-muted small">Hace 3 hora</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> Nueva Reserva N°4
                                        <span class="pull-right text-muted small">Hace 23 hora</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> Nueva Reserva N°3   
                                        <span class="pull-right text-muted small">Hace Un dia</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>Más Notificasiones</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> Samuel Sanches <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="Usuario.jsp"><i class="fa fa-user fa-fw"></i>
                                </a>
                            </li>
                            <li><a href="../Error 404.jsp"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="../../index.jsp"><i class="dropdown-item" class="fa fa-sign-out fa-fw"></i><%
                            HttpSession sesion = request.getSession();
                            String Email = (String)sesion.getAttribute("email");
                            String Rol;
                            
                            if(sesion.getAttribute("email")!=null && sesion.getAttribute("rol")!=null){
                                Email=sesion.getAttribute("email").toString();
                                Rol=sesion.getAttribute("rol").toString();
                                out.print("<a href='../InicioSesion.jsp?cerrar=true'>Cerrar Session</a>");
                            }else{
                                out.print("<script>location.replace('../InicioSesion.jsp');</script>");
                            } 
                        %></a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <a href="Inicio.htm" class="navbar-brand" href="#">
                            <img src="assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>

                        <a href="Inicio.htm" class="navbar-brand" href="#">HSD PLUS</a>
                        </br>
                        </br>
                        </br>
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Buscar">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                    </span>
                                    </input>
                                </div>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle"><i class="menu-icon fa fa-shopping-cart"></i><span class="menu-text"> Registro de Reservas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Registro Reservas</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle">
                                    <i class="menu-icon fa  fa-file-text"></i>
                                    <span class="menu-text">
                                        Registro de Ventas<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Registro Ventas</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle"><i class="menu-icon fa fa-list-ol"></i><span class="menu-text">Inventario<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Usuarios</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Inventario General</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Producto en Proceso</a>
                                    </li>                            
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Producto Final</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Sobrantes</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Desechos</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="#" class="dropdown-toggle"><i class="menu-icon fa fa-sitemap"></i><span class="menu-text">Componentes<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Tipo Documento</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Registrar Rol</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Registrar Proveedor</a>
                                    </li>
                                    <li>
                                        <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Registrar Grosor de hilo</a>
                                    </li>
                                    <li>
                                        <a href="ControladorTotal?menu=Ciudad"><i class="menu-icon fa fa-caret-right"></i>Configuracion de Ciudades</a>
                                    </li>
                                </ul>
                            </li>

                            <li>
                                <a href="Catalogo/Modificar.htm"><i class="fa fa-bar-chart-o fa-fw"></i>Gestor del Catalogo
                                </a>
                            </li>
                            <li>
                                <a href="Usuarios.htm"><i class="fa fa-edit fa-fw"></i> Usuarios
                                </a>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
        </div>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">Ciudades</h1>
                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="container">
                                    <div class="form-group input-group col-md-13">
                                        
                                    </div>
                                </div>
                                <form action="ControladorTotal?menu=Ciudad" method="POST">
                                    <div class="modal-header">						
                                        <h3 class="modal-title">Agregar Ciudad</h3>
                                        <button type="button" class="close" data-dismiss="modal"  aria-hidden="true">&times;</button>
                                    </div>
                                    <div class="modal-body">					
                                        <div class="form-group">
                                            <label>Agregar Datos:</label>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                        <div>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                        <div>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                        <div>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                        <div>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                        <div>
                                            <input type="text" name="txtnombre" class="form-control" value=""  placeholder="Escriba Nueva Ciudad">
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                                        <input type="submit" name="accion" type="submit" class="btn btn-primary btn" value="Agregar">
                                        <input type="submit" name="accion" type="submit" class="btn btn-primary btn" value="Actualizar">
                                    </div>
                                </form>
                                <div class="container">
                                    <br>
                                    <table   class="table table-striped table-bordered table-hover">
                                        <thead class="text-center">
                                            <tr>
                                                <th class="text-center hidden-400>ID Ciudad">ID Ciudad</th>
                                                <th class="text-center hidden-400>ID Ciudad">Nombre</th>
                                                <th class="text-center hidden-400>ID Ciudad">Acciones</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="ci" items="${ciudad}">
                                                <tr>
                                                    <td class="text-center hidden-400>ID Ciudad">${ ci.getId_ciudad()}</td>
                                                    <td class="text-center hidden-400>ID Ciudad">${ ci.getNombre() }</td>
                                                    <td class="text-center">
                                                        <a href="ControladorTotal?menu=Ciudad&accion=Editar&id_ciudad=${ ci.getId_ciudad()}"class="edit" data-toggle="modal"><i class="material-icons-warning ace-icon fa fa-pencil fa fa-2x" style="color:#F1AB49" data-toggle="tooltip" title="Editar Ciudad"></i></a>
                                                        <a href="ControladorTotal?menu=Ciudad&accion=Eliminar&id_ciudad=${ ci.getId_ciudad()}"class="delete" ><i class="material-icons-danger ace-icon fa fa-trash-o fa fa-2x " style="color:#D4564F" data-toggle="tooltip" title="Eliminar Ciudad"></i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    
                                    
                                    <!-- Edit Modal HTML -->
                                    <div id="editEmployeeModal" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <!-- Delete Modal HTML -->
                                    <div id="deleteEmployeeModal" class="modal fade">
                                        <div class="modal-dialog">
                                            <div class="modal-content">
                                                <form style="background-color: " >
                                                    <div class="modal-header">	
                                                        <img src="assets/Img/Logo.png" width="40" height="40" text="background-color: black" alt="HSD PLUS"></a>
                                                        
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                    </div>
                                                    <div class="modal-body">					
                                                        <p>¿Seguro, que quiere eliminar la ciudad de ${dato.nombre} ?</p>
                                                        <p class="text-warning"><small>Esta acción no se puede deshacer.</small></p>
                                                    </div>

                                                    <div class="modal-footer">
                                                        <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                                                        <input type="submit" class="btn btn-danger" value="Eliminar">
                                                    </div>
                                                </form>
                                            </div>
                                        </div>
                                    </div>

              </div>



</div>
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/startmin.js"></script>

<!-- Morris Charts JavaScript -->
<script src="assets/js/raphael.min.js"></script>
<script src="assets/jss/morris.min.js"></script>
<script src="assets/js/morris-data.js"></script>

<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/js/metisMenu.min.js"></script>
<script src="assets/js/startmin.js"></script>
        
</body>
</html>
