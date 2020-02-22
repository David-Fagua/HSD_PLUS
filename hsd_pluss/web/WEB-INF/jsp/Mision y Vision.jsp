<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
	<title>Misión y Visión</title>

	<link rel="icon" type="assets/img/png" href="<%=request.getContextPath()%>/assets/Img/Logo.png">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="utf-8">

</head>


<body>

<br/>
<br/>
<br/>


<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="index.htm" class="navbar-brand" href="#">
    <img src="assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="index.htm" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalogo.htm" class="nav-link" style="color: #47A5B4;">Catalogo
          </a>
          <a href="Contactenos.htm" class="nav-link" style="color: #47A5B4;">Contactenos
          </a>
          <a href="quienessomos.htm" class="nav-link" style="color: #47A5B4;">¿Quienes Somos?
          </a>
          <a href="Mision y Vision.htm" class="nav-link" style="color: #47A5B4;">Misión y Visión
          </a>
          <a href="Portafolio.htm" class="nav-link" style="color: #47A5B4;">Portafolio
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
          <img src="assets/Img/Usuario.png" width="40" height="40" alt="">
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="esp/InicioSesion.htm">Iniciar Sesión</a>
          <a class="dropdown-item" href="esp/Registrar.htm">Registrar</a>
        </div>
      </div>
    </div>
  </nav>
</div>
<link rel="icon" type="image/png"src="assets/Img/Logo.png">

<br/>

<div class="container">
  <div class="row featurette">
    <div class="col-md-7">
      <h2 class="featurette-heading">Misión</h2>
      <p class="lead">Somos una empresa dedicada a la comercialización y distribución de productos informáticos, fabricación de ordenadores, desarrollo de aplicaciones informáticas de gestión, soluciones en Internet, servicio técnico y mantenimiento de equipos y sistemas informáticos, hosting, y consultoría de protección de datos. Ofreciendo una solución a todo el territorio nacional.</p>
    </div>
    <div class="col-md-5">
      <img src="assets/Img/17.jpg" class="card-img-top" alt="img">
    </div>
  </div>
  </br>
  <div class="row featurette">
    <div class="col-md-7 order-md-2">
      <h2 class="featurette-heading">Visión</h2>
      <p class="lead">Pretendemos ser un referente en el mercado nacional en el sector de las TIC, y para ello abarcaremos todos los servicios que ofrecemos actualmente incrementando los que vayan surgiendo debido a la necesidad de cambio provocado por los avances tecnológicos. Esto es así ya que somos una empresa en constante innovación ya que el sector de la tecnología así lo requiere.</p>
    </div>
    <div class="col-md-5 order-md-1">
      <img src="assets/Img/18.jpg" class="card-img-top" alt="img">
    </div>
  </div>
  </br>
</div>
  
<div class="container">
  <footer class="pt-5 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">Información Útil</h5>
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
          <li><a class="text-muted" href="esp/Registrar.htm">Registrar</a></li>
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
