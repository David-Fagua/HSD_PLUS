<%@page contentType="text/html" pageEncoding="UTF-8"%>
<a href="../../css.jsp"></a>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />

    <title>Inicio</title>

    <link rel="icon" type="image/png" src="../../assets/Img/Logo.png">
    <link href="../../assets/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/metisMenu.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/timeline.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/startmin.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/morris.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="../../assets/css/metisMenu.min.css" rel="stylesheet" type="text/css"/>
    
    
    
    
<!-- Morris Charts JavaScript -->
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
            <li><a href="inicio.html"><i class="fa fa-home fa-fw"></i> Inicio</a></li>
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
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva NÂ°7
                                <span class="pull-right text-muted small">Hace 4 minutos</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva NÂ°6
                                <span class="pull-right text-muted small">Hace 1 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva NÂ°5
                                <span class="pull-right text-muted small">Hace 3 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva NÂ°4
                                <span class="pull-right text-muted small">Hace 23 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva NÂ°3   
                                <span class="pull-right text-muted small">Hace Un dia</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>MÃ¡s Notificasiones</strong>
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
                    <li><a href="Usuario.html"><i class="fa fa-user fa-fw"></i>Usuario</a>
                    </li>
                    <li><a href="../Error 404.html"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../../Inicio.html"><i class="fa fa-sign-out fa-fw"></i>Cerrar Sesión</a>
                    </li>
                </ul>
            </li>
        </ul>
        //desplegable//
        

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
                                                <a href="registroReservas.jsp">
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
                                                <a href="registroRegistro_ventas.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Ventas
                                                </a>

                                                <b class="arrow"></b>
                                        </li>



                                </ul>
                        </li>


                        <li class="active">
                                <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-list-ol"></i>
                                        <span class="menu-text"> Inventario </span>

                                        <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                        <li class="active">
                                                <a href="registroUsuarios.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Usuarios 
                                                </a>

                                                <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                                <a href="registroInventario_general.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Inventario General
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroProducto_proceso.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Producto en Proceso
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroProducto_final.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Producto Final
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroSobrantes.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Sobrantes
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroDesechos.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Desechos
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroUsuarios.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Usuarios
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                </ul>
                        </li>

                        <li class="active">
                                <a href="#" class="dropdown-toggle">
                                        <i class="menu-icon fa fa-sitemap"></i>
                                        <span class="menu-text"> Componentes </span>

                                        <b class="arrow fa fa-angle-down"></b>
                                </a>

                                <b class="arrow"></b>

                                <ul class="submenu">
                                        <li class="active">
                                                <a href="registroTipo_documento.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Tipo de Documento
                                                </a>

                                                <b class="arrow"></b>
                                        </li>

                                        <li class="">
                                                <a href="registroRoles.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Rol
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroProveedor.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Proveedor
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroGrosor_hilo.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Grosor de Hilo
                                                </a>

                                                <b class="arrow"></b>
                                        </li>
                                        <li class="">
                                                <a href="registroCiudad.jsp">
                                                        <i class="menu-icon fa fa-caret-right"></i>
                                                        Registrar Ciudad
                                                </a>

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
                                                Bienvenido

                                        </h1>
                                </div><!-- /.page-header -->

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

</div>
<script src="../../assets/js/startmin.js" type="text/javascript"></script>
<script src="../../assets/js/raphael.min.js" type="text/javascript"></script>
<script src="../../assets/js/morris.min.js" type="text/javascript"></script>
<script src="../../assets/js/morris-data.js" type="text/javascript"></script>
<script src="../../assets/js/metisMenu.min.js" type="text/javascript"></script>
<script src="../../assets/js/jquery.min.js" type="text/javascript"></script>
<script src="../../assets/js/functions.js" type="text/javascript"></script>
<script src="../../assets/js/flot-data.js" type="text/javascript"></script>
<script src="../../assets/js/bootstrap.min.js" type="text/javascript"></script>
        
</body>
</html>
