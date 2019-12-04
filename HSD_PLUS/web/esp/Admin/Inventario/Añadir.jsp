<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Inventario</title>

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
            <li><a href="inicio.jsp"><i class="fa fa-home fa-fw"></i> Inicio</a></li>
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
                    <li><a href="../Usuario.jsp"><i class="fa fa-user fa-fw"></i>Usuario</a>
                    </li>
                    <li><a href="../../Error 404.jsp"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../../../Inicio.jsp"><i class="fa fa-sign-out fa-fw"></i>Cerrar Sesión</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <a href="inicio.jsp" class="navbar-brand" href="#">
                    <img src="../../../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
                    <a href="inicio.jsp" class="navbar-brand" href="#">HSD PLUS</a>
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
                        <a><i class="fa fa-bar-chart-o fa-fw"></i>Inventarios<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../Inventario/Inventario.jsp">Inventario general</a>
                            </li>
                            <li>
                                <a href="../Inventario/Añadir.jsp">Producto inicial</a>
                            </li>
                            <li>
                                <a href="../Inventario/Editar.jsp">Producto en proceso</a>
                            </li>
                            <li>
                                <a href="../Inventario/Eliminar.jsp">Producto final</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a><i class="fa fa-bar-chart-o fa-fw"></i>Ventas<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="../Ventas/Registrar.jsp">Registrar</a>
                            </li>
                            <li>
                                <a href="../Ventas/Consultar.jsp">Consultar</a>
                            </li>
                            <li>
                                <a href="../Ventas/Modificar.jsp">Modificar</a>
                            </li>
                            <li>
                                <a href="../Ventas/Historial de ventas.jsp">Historial de ventas</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="../Catalogo/Modificar.jsp"><i class="fa fa-edit fa-fw"></i>Gestor del Catalogo
                        </a>
                    </li>
                    <li>
                        <a href="../Reservaciones.jsp"><i class="fa fa-edit fa-fw"></i> Reservas de los Clientes
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
                    <h1 class="page-header">Producto inicial</h1>
                   <div class="card mb-3">

 <input type="text" class="form-control pull-right" id="search" placeholder="Consultar producto">
 <br>
 <br>
</div>         
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                    </div>
                    <div class="panel-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>Id</th>
                                        <th>Nombre articulo</th>
                                        <th>Fecha</th>
                                        <th>Precio de compra</th>
                                        <th>Proveedor</th>
                                        <th>Cantidad</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr class="odd gradeX">
                                        <td>000001</td>
                                        <td>Algodon</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>001002</td>
                                        <td>Seda</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                    </tr>
                                    <tr class="odd gradeX">
                                        <td>001003</td>
                                        <td>Seda</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>001004</td>
                                        <td>Poliester</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                    </tr><tr class="odd gradeX">
                                        <td>001005</td>
                                        <td>Algodon</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                    </tr>
                                    <tr class="even gradeC">
                                        <td>001006</td>
                                        <td>Poliester</td>
                                        <td>03/05/19</td>
                                        <td class="center">1'000.000</td>
                                        <td class="center">Algodones S.A</td>
                                        <td class="center">20 kg</td>
                                </tbody>
                            </table>
                        </div>
                                    <!-- /.table-responsive -->
                        <div class="row">
                            <div class="col-sm-5">
                                <div class="dataTables_info" id="dataTables-example_info" role="status" aria-live="polite">
                                </div>
                            </div>
                              <p>
                                  <a href="#" class="btn btn-primary btn-lg" role="button">Registrar</a>
                                  <a href="#" class="btn btn-primary btn-lg" role="button">Editar</a>
                                  <a href="#" class="btn btn-primary btn-lg" role="button">Eliminar</a>
                               </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script type="text/javascript" src="../../../assets/js/functions.js"></script>
<script src="../../../assets/js/jquery.min.js"></script>
<script src="../../../assets/js/bootstrap.min.js"></script>
<script src="../../../assets/js/metisMenu.min.js"></script>
<script src="../../../assets/js/startmin.js"></script>

</body>
</html>