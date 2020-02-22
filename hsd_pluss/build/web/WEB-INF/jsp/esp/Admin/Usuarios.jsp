<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Usuarios</title>

    <link rel="icon" type="image/png" href="../../assets/Img/Logo.png">
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../assets/css/metisMenu.min.css" rel="stylesheet">
    <link href="../../assets/css/timeline.css" rel="stylesheet">
    <link href="../../assets/css/startmin.css" rel="stylesheet">
    <link href="../../assets/css/morris.css" rel="stylesheet">
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<div id="wrapper">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Samuel X</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <ul class="nav navbar-nav navbar-left navbar-top-links">
            <li><a href="Inicio.htm"><i class="fa fa-home fa-fw"></i> Inicio</a></li>
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
                    <li><a href="Usuario.htm"><i class="fa fa-user fa-fw"></i>Usuario</a>
                    </li>
                    <li><a href="../Error 404.htm"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../../index.htm"><i class="fa fa-sign-out fa-fw"></i>Cerrar Sesión</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <a href="Inicio.htm" class="navbar-brand" href="#">
                    <img src="../../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
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
                                <a href="ControladorProducto_proceso?accion=listar"><i class="menu-icon fa fa-caret-right"></i>Lista de Ciudades</a>
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

</br>
</br>

<div id="page-wrapper">
    <div class="container-fluid">
        <div class="row featurette">
            <div class="col-sm-6 col-md-6">
                <div class="thumbnail">
                    <img src="../../img/Usuario.png" width="300" height="300" class="card-img-top">
                    <div class="caption text-center">
                        <h3>Administradores</h3>
                        <a href="#" class="btn btn-primary btn-lg" role="button">Ver</a>
                    </div>
                </div>
            </div>
            <div class="col-sm-6 col-md-6">
                <div class="thumbnail">
                    <img src="../../img/Usuario.png" width="300" height="300" class="card-img-top">
                    <div class="caption text-center">
                        <h3>Clientes</h3>
                        <a href="#" class="btn btn-primary btn-lg" role="button">Ver</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="../../assets/js/jquery.min.js"></script>
<script src="../../assets/js/bootstrap.min.js"></script>
<script src="../../assets/js/metisMenu.min.js"></script>
<script src="../../assets/js/startmin.js"></script>

</body>
</html>