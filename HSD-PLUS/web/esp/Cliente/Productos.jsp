<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>HSD PLUS</title>

	<link rel="icon" type="image/png" href="../../assets/Img/Logo.png">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="utf-8">

</head>


<body>

<br/>
<br/>
<br/>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="Catalogo.jsp" class="navbar-brand" href="#">
    <img src="../../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="Catalogo.jsp" class="navbar-brand" href="#">SHD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalogo.jsp" class="nav-link" style="color: #47A5B4;">Catalogo
          </a>
          <a href="ConsultarCompras.jsp" class="nav-link" style="color: #47A5B4;">Consultar Compras
          </a>
          <a href="Reservarproducto.jsp" class="nav-link" style="color: #47A5B4;">Reservaciones
          </a>
        </li>
      </ul>
      <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
          <input class="form-control mr-sm-2" type="search" placeholder="Buscar" aria-label="Search">
          <button style="color:#47A5B4;" class="btn btn-outline-info my-2 my-sm-0" type="submit">Buscar</button>
        </form>
      </div>
      <div class="btn-group dropleft">
        <button style="background-color: #ffffff;" class="button" class="btn btn-sec btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../../assets/Img//Usuario.png" width="40" height="40" alt="">
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="Cliente.jsp">Cliente</a>
          <a class="dropdown-item" href="Cliente.jsp">Configuración</a>
          <a class="dropdown-item" href="../../assets/Index.jsp">Cerrar sesión</a>
        </div>
      </nav>
    </div>
  </nav>
</div>

</br>

<div class="container">
  <div class="row">
    <div class="row featurette">
      <div class="row">
    <div class="col-md-4 order-md-2 mb-4">
      <h4 class="d-flex justify-content-between align-items-center mb-3">
        <span class="text-muted">Carrito de ConsultarCompras</span>
        <span class="badge badge-secondary badge-pill">3</span>
      </h4>
      <ul class="list-group mb-3">
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Hilo X</h6>
            <small class="text-muted">Hilo de alta calidad.</small>
          </div>
          <span class="text-muted">$12.000</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Hilo X</h6>
            <small class="text-muted">Hilo de alta calidad.</small>
          </div>
          <span class="text-muted">$8.000</span>
        </li>
        <li class="list-group-item d-flex justify-content-between lh-condensed">
          <div>
            <h6 class="my-0">Hilo XX</h6>
            <small class="text-muted">Hilo de alta calidad.</small>
          </div>
          <span class="text-muted">$5.000</span>
        </li>
        <li class="list-group-item d-flex justify-content-between bg-light">
          <div class="text-success">
            <h6 class="my-0">Codigo Promocional</h6>
            <small>Descuento de fidelidad</small>
          </div>
          <span class="text-success">-$5.000</span>
        </li>
        <li class="list-group-item d-flex justify-content-between">
          <span>Total (Pesos)</span>
          <strong>$20.000</strong>
        </li>
      </ul>

      <form class="card p-2">
        <div class="input-group">
          <input type="text" class="form-control" placeholder="Codigo Promocional">
          <div class="input-group-append">
            <button type="submit" class="btn btn-secondary">Redimir</button>
          </div>
        </div>
      </form>
    </div>
    <div class="col-md-8 order-md-1">
      <form class="needs-validation" novalidate>
        <div class="row">
          <div class="col-md-6 mb-3">
            
            
            <div class="invalid-feedback">
              Valid last name is required.
            </div>
          </div>
        </div>

<h2 class="featurette-heading">Hilo X</h2>
        <div class="row">
          <div class="col-md-6 mb-3">
            <img src="../../img/18.jpg" class="card-img-top" alt="img">
          </div>
          <div class="col-md-6 mb-3">
            <p class="lead">Un hilo es una hebra larga y delgada de un material textil, especialmente la que se usa para coser.1​

            La mayor parte de las fibras textiles, salvo la seda y las fibras sintéticas, no exceden de algunos centímetros de longitud, por lo que es necesario el proceso de hilado. Los hilos se emplean ampliamente en la industria textil para coser, tejer, etc.</p>
          </div>
        </div>

        

        <button type="button" class="btn btn-primary btn-lg">Cotizar</button>
        <button type="button" class="btn btn-secondary btn-lg">Reservar</button>
      </div>
    </div>
  </div>
</div>



</br>
  
<div class="container">
  <footer class="pt-5 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">Información útil</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Contacto & Ayuda</a></li>
          <li><a class="text-muted" href="#">Consejos de seguridad</a></li>
          <li><a class="text-muted" href="#">Terminos & Condiciones</a></li>
          <li><a class="text-muted" href="#">Acerca de HSD Plus</a></li>
          <li><a class="text-muted" href="#">Sumate a nosotros</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">Servicios</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="Registrar.jsp">Registrate</a></li>
          <li><a class="text-muted" href="#">Reserva</a></li>
          <li><a class="text-muted" href="#">Consulta</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">Contactenos</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Equipo</a></li>
          <li><a class="text-muted" href="#">Localización</a></li>
          <li><a class="text-muted" href="#">Privacidad</a></li>
          <li><a class="text-muted" href="#">Terminos</a></li>
        </ul>
      </div>
    </div>
    <div class="col-12 col-md">
      <small class="d-block mb-3 text-center text-muted">Copyright &copy; 2018-2019 HSD Plus</small>
    </div>
  </footer>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>
