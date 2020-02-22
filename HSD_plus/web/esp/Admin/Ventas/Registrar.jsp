<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Registrar</title>

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
                    <li><a href="../Usuario.jsp"><i class="fa fa-user fa-fw"></i>Usuario</a>
                    </li>
                    <li><a href="../../Error 404.jsp"><i class="fa fa-gear fa-fw"></i> Configuraciones</a>
                    </li>
                    <li class="divider"></li>
                    <li><a href="../../../index.jsp"><i class="fa fa-sign-out fa-fw"></i>Cerrar Sesión</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse">
                <a href="../Inicio.jsp" class="navbar-brand" href="#">
                    <img src="../../../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
                    <a href="../Inicio.jsp" class="navbar-brand" href="#">HSD PLUS</a>
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
                    <h1 class="page-header">Registrar Nueva Venta</h1>
                   <div class="card mb-3">
</div>

            
    <div class="row">
    <div class="col-md-2">
    </div>
    <div class="col-md-8">
      
      
        
      </center>
      <div class="form-group"> <!-- Vendedor Button -->
        <label for="state_id" class="control-label" >Fecha de Venta</label>
        <div class="form-group">
            <input type="date" name="fecha" class="form-control">
        </div>                    
      </div>


      <div class="form-group">
         <input type="number" class="form-control" placeholder="ID Cliente">
      </div>
      <div class="form-group">
        <input type="number" class="form-control" placeholder="Cantidad">
      </div>
      <div class="form-group">
         <input type="number" class="form-control" placeholder="Precio Por Unidad">
      </div>
      <div class="form-group">
         <input type="number" class="form-control" placeholder="Precio Total">
      </div>
      <div class="form-group">
         <input type="number" class="form-control" placeholder="ID Producto Final">
      </div>
            <div class="form-group">
         <input type="number" class="form-control" placeholder="ID Reserva">
      </div>

      <p>

      Adjuntar archivo:
        <input type="file" name="archivossubidos[]" multiple>
      </p>
            <div class="form-group">
         <textarea type="number" class="form-control" placeholder="Observaciones"></textarea>
      </div>

    <div class="row ">
            <div class="col-md-6 col-sm-6 col-xs-6 pad-adjust">
                 <input type="submit"  class="btn btn-default"value="Limpiar"/> &nbsp; &nbsp; &nbsp;<input type="submit"  class="btn btn-primary" value="Aceptar"/>
              </div>

        </div>
        </div>
      </footer>

    </div>
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
