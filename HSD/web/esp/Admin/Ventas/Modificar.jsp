<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Consultar</title>

    <link rel="icon" type="image/png" href="../../../assets/Img/Logo.png">
    <link href="../../../assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="../../../assets/css/metisMenu.min.css" rel="stylesheet">
    <link href="../../../assets/css/timeline.css" rel="stylesheet">
    <link href="../../../assets/css/startmin.css" rel="stylesheet">
    <link href="../../../assets/css/morris.css" rel="stylesheet">
    <link href="../../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
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
            <li>
                <a href="../Inicio.jsp" class="navbar-brand">
                <img src="../../../assets/Img/Logo.png" width="25" height="25" alt="HSD PLUS"></a>   
            </li>
            <li><a href="../Inicio.jsp"><i class="fa fa-home fa-fw"></i>Inicio</a></li>
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
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva N�7
                                <span class="pull-right text-muted small">Hace 4 minutos</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva N�6
                                <span class="pull-right text-muted small">Hace 1 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva N�5
                                <span class="pull-right text-muted small">Hace 3 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva N�4
                                <span class="pull-right text-muted small">Hace 23 hora</span>
                            </div>
                        </a>
                    </li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> Nueva Reserva N�3   
                                <span class="pull-right text-muted small">Hace Un dia</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>M�s Notificasiones</strong>
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
                    <li><a href="Usuario.jsp"><i class="fa fa-user fa-fw"></i>Usuario</a>
                    </li>
                    <li><a href="../Error 404.jsp"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../../index.jsp"><i class="dropdown-item" class="fa fa-sign-out fa-fw"></i>Cerrar Sesi�n</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
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
                        <a href="Modificar.jsp"><i class="fa fa-bar-chart-o fa-fw"></i>Gestor del Catalogo
                        </a>
                    </li>
                    <li>
                        <a href="../Usuarios.jsp"><i class="fa fa-edit fa-fw"></i> Usuarios
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
                    <h1 class="page-header">Registro de Ventas</h1>
                   <div class="card mb-3">

 <input type="text" class="form-control pull-right" style="width:30%" id="search" placeholder="Consultar salida del producto vendido">
</diva>
<p>

<button class="btn btn-primary" role="link" onclick="window.location='Registrar.html'">Registrar Salida del Producto Vendido</button>


</p>
<div class="form-group">
<div id="div1">


  <table border="1" class="table-bordered table pull-right" id="mytable" cellspacing="0" style="width: 100%;">


    <tr>
     <th>Registro</th>
     <th>NombreCliente</th>
     <th>ApellidoCliente</th>
    <th>CedulaCliente</th>
     <th>Direccióncliente</th>
     <th>TelefonoCliente</th>
     <th>Productos</th>
     <th>Fecha</th>
     <th>Vendedor</th>
     <th>ValorTotal</th>
     <th>Opciones</th></th>
    </tr>

    <tr> 
     <td>0001</td>
     <td>Armando </td> 
     <td>Arquimedes</td>
     <td>12345678910</td> 
     <td>crea 54a sur</td>
     <td>123456789</td>
     <td>Hilo Croche</td>
     <td>11-12-2019</td>
     <td>Hrold</td>
     <td>25500</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr> 
     <td>0002</td>
    <td>Bernardo</td>
     <td>Bericio</td>
     <td>1231234890</td>
     <td>calle74#92-02</td>
     <td>9876567</td>
     <td>Hilo polietioleno</td>
     <td>2001/11/28</td>
     <td>David</td>
     <td>90000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span    ></td>
    </tr>

    <tr> 
    <td>0001</td>
     <td>Alirio</td>
     <td>Aleman</td>
     <td>12345671234</td>
     <td>calle74#92-01</td>
     <td>1234123</td>
     <td>Hilo Croche</td>
    <td>2000/11/28</td>
     <td>Harold</td>
    <td>30000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0001</td>
     <td>Carlos</td>
     <td>Carmin</td>
     <td>1234567890</td>
     <td>calle74#92-03</td>
     <td>1123567</td>
     <td>Hilo de Trapero</td>
     <td>2003/11/28</td>
    <td>Harold</td>
    <td>28000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0005</td>
     <td>David</td>
     <td>Darnes</td>
     <td>1456567890</td>
     <td>calle74#92-11</td> 
     <td>1238527</td>
     <td>Hilo Croche</td>
     <td>2009/09/10</td>
     <td>Samuel</td>
     <td>500000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0010</td>
     <td>Jose</td>
     <td>Plata</td>
     <td>1234567890</td>
     <td>calle74#92-85</td>
     <td>1234567</td>
     <td>Hilo Croche</td>
     <td>2008/11/28</td>
     <td>HDavid</td>
     <td>500000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

<tr>
 <td>0001</td>
 <td>Karen</td>
 <td>Vengas</td>
 <td>1234512390</td>
 <td>calle74#95-15</td>
 <td>7654321</td>
 <td>Hilo fino</td>
 <td>2008/11/28</td>
 <td>Samuel</td>
 <td>500000</td>
 <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
</tr>



 <tr> 
     <td>0001</td>
     <td>Armando </td> 
     <td>Arquimedes</td>
     <td>12345678910</td> 
     <td>crea 54a sur</td>
     <td>123456789</td>
     <td>Hilo Croche</td>
     <td>11-12-2019</td>
     <td>Hrold</td>
     <td>25500</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr> 
     <td>0002</td>
    <td>Bernardo</td>
     <td>Bericio</td>
     <td>1231234890</td>
     <td>calle74#92-02</td>
     <td>9876567</td>
     <td>Hilo polietioleno</td>
     <td>2001/11/28</td>
     <td>David</td>
     <td>90000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span    ></td>
    </tr>

    <tr> 
    <td>0001</td>
     <td>Alirio</td>
     <td>Aleman</td>
     <td>12345671234</td>
     <td>calle74#92-01</td>
     <td>1234123</td>
     <td>Hilo Croche</td>
    <td>2000/11/28</td>
     <td>Harold</td>
    <td>30000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0001</td>
     <td>Carlos</td>
     <td>Carmin</td>
     <td>1234567890</td>
     <td>calle74#92-03</td>
     <td>1123567</td>
     <td>Hilo de Trapero</td>
     <td>2003/11/28</td>
    <td>Harold</td>
    <td>28000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0005</td>
     <td>David</td>
     <td>Darnes</td>
     <td>1456567890</td>
     <td>calle74#92-11</td> 
     <td>1238527</td>
     <td>Hilo Croche</td>
     <td>2009/09/10</td>
     <td>Samuel</td>
     <td>500000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

    <tr>
     <td>0010</td>
     <td>Jose</td>
     <td>Plata</td>
     <td>1234567890</td>
     <td>calle74#92-85</td>
     <td>1234567</td>
     <td>Hilo Croche</td>
     <td>2008/11/28</td>
     <td>HDavid</td>
     <td>500000</td>
     <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
    </tr>

<tr>
 <td>0001</td>
 <td>Karen</td>
 <td>Vengas</td>
 <td>1234512390</td>
 <td>calle74#95-15</td>
 <td>7654321</td>
 <td>Hilo fino</td>
 <td>2008/11/28</td>
 <td>Samuel</td>
 <td>500000</td>
 <td><span class="editar" onclick="transformarEnEditable(this)">Editar</span></td>
</tr>





  </table>
<div class="table-responsive">
</div>



</div>
<div id="contenedorForm">
</div>

<center>
<p>
  <button type="button" class="btn btn-primary" >Consultar Historial de Registro de Ventas</button>
</p>
</center>




       



    
        </div>
    </div>

</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
 // Write on keyup event of keyword input element
 $(document).ready(function(){
 $("#search").keyup(function(){
 _this = this;
 // Show only matching TR, hide rest of them
 $.each($("#mytable tbody tr"), function() {
 if($(this).text().toLowerCase().indexOf($(_this).val().toLowerCase()) === -1)
 $(this).hide();
 else
 $(this).show();
 });
 });
});
</script>

<script type="text/javascript" src="../../../assets/js/functions.js"></script>
<script src="../../../assets/js/jquery.min.js"></script>
<script src="../../../assets/js/bootstrap.min.js"></script>
<script src="../../../assets/js/metisMenu.min.js"></script>
<script src="../../../assets/js/startmin.js"></script>


</body>
</html>
