<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>HSD PLUS</title>

	<link rel="icon" type="assets/img/png" href="<%=request.getContextPath()%>/assets/Img/Logo.png">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="utf-8">

</head>


<body>

<br/>
<br/>


<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="index.jsp" class="navbar-brand" href="#">
    <img src="assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="index.jsp" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalogo.jsp" class="nav-link" style="color: #47A5B4;">Catalogo
          </a>
          <a href="Contactenos.jsp" class="nav-link" style="color: #47A5B4;">Contactenos
          </a>
          <a href="quienessomos.jsp" class="nav-link" style="color: #47A5B4;">�Quienes Somos?
          </a>
          <a href="Mision y Vision.jsp" class="nav-link" style="color: #47A5B4;">Misi�n y Visi�n
          </a>
          <a href="Portafolio.jsp" class="nav-link" style="color: #47A5B4;">Portafolio
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
          <a class="dropdown-item" href="esp/InicioSesion.jsp">Iniciar Sesi�n</a>
          <a class="dropdown-item" href="esp/Registrar.jsp">Registrar</a>
        </div>
      </div>
    </div>
  </nav>
</div>

</br>

<div>
  <center>
    <div class="card-body">
      <h5>¿QUIENES SOMOS?</h5>
    </div>
    </center>
  </div>
</div>
<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">
          <img src="assets/Img/A.png" class="card-img-top" alt="...">
          <h5>Harold Rojas</h5>
          <p class="card-text">Ingeniero de sistemas, conocimiento en administraciÃ³n con capacidad de trabajo en equipo, desempeÃ±o alto en entornos de alta presiÃ³n,   fortaleza para tomar decisiones con objetividad, disposiciÃ³n para el aprendizaje y el conocimiento, hÃ¡bil para la planeaciÃ³n, gestiÃ³n y ejecuciÃ³n de  proyectos.</p>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">
          <img src="assets/Img/B.jpg" class="card-img-top" alt="...">
          <h5>Samuel Salguero</h5>
          <p class="card-text">Ingeniero de sistemas, tecnico de sistema, Capacidad de trabajo en equipo con abogados, fortaleza para tomar decisiones con objetividad, disposiciÃ³n para el aprendizaje y el conocimiento, hÃ¡bil para la planeaciÃ³n, gestiÃ³n y ejecuciÃ³n de  proyectos.</p>
        </div>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="card">
        <div class="card-body">
          <img src="assets/Img/C.jpg" class="card-img-top" alt="...">
          <h5>David Fagua</h5>
          <p class="card-text">Ingeniero de sistemas y diseÃ±ador grafico, Capacidad de trabajo en equipo, fortaleza para tomar decisiones con objetividad, disposiciÃ³n para el aprendizaje y el conocimiento, hÃ¡bil para la planeaciÃ³n, creatividad, gestiÃ³n y ejecuciÃ³n de  proyectos.</p>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="container">
    <center>
      <video width="720" height="480" controls>
        <source src="video/video.mp4" type="video/mp4">
      </video>
    </center>
</div>
 
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
