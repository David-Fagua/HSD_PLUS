<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Catalogo</title>

  <link rel="icon" type="image/png" href="Img/Logo.png">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <meta charset="utf-8">
  <%@include file="css.jsp"  %>

</head>
<body>

<br/>
<br/>
<br/>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="inicio.jsp" class="navbar-brand" href="#">
    <img src="img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="inicio.jsp" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalogo.jsp" class="nav-link" style="color: #47A5B4;">Catalogo
          </a>
          <a href="Contactenos.jsp" class="nav-link" style="color: #47A5B4;">Contactenos
          </a>
          <a href="Quienessomos.jsp" class="nav-link" style="color: #47A5B4;">¿Quienes Somos?
          </a>
          <a href="Misión y Visión.jsp" class="nav-link" style="color: #47A5B4;">Misión y Visión
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
          <img src="img/Usuario.png" width="40" height="40" alt="">
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="iniciosesion.jsp">Iniciar Sesión</a>
          <a class="dropdown-item" href="Registrar.jsp">Registrar</a>
        </div>
      </div>
    </div>
  </nav>
</div>

</br>

<div class="container">
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo de algodón</h3>
      <h6 href="Productos.jsp" class="lead">este tipo de hilo sirve para cualquier tipo de costura pero es muy aconsejado para coser a mano, ya que es suave y fácil de sacar y romper.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$8.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">14 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/11.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilos de seda</h3>
      <h6 href="Productos.jsp" class="lead"> usado para coser seda y otras telas delicadas ofrece una variedad cromática muy limitada. Ideal para bordados. Su precio es más elevado que el resto.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$25.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">6 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/2.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilos sintéticos</h3>
      <h6 href="Productos.jsp" class="lead">elásticos y por norma general fabricados con poliéster. Existen modelos también de algodón y fibra sintética. Este tipo es de los más resistentes para todo tipo de telas.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$18.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">1 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/3.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo de algodón perlé</h3>
      <h6 href="Productos.jsp" class="lead">este tipo de hilo es ideal para coser lana, algodón y tiene un tono brillante. Sirven para coser tanto a máquina como a mano. Este tipo de hilo es mucho más resistente a los lavados y planchados.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$10.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">29 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/4.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="Productos.jsp" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$100.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/5.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="Productos.jsp" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$1.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/6.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="Productos.jsp" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$5.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/7.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="Productos.jsp" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$3.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/8.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="Productos.jsp" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="#" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$7.000</h3>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="img/9.jpg" class="card-img-top" alt="img">
  </div>
</div>

</br>
  
<div class="container">
  <footer class="pt-5 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-6 col-md">
        <h5>Información útil</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Contacto & Ayuda</a></li>
          <li><a class="text-muted" href="#">Consejos de seguridad</a></li>
          <li><a class="text-muted" href="#">Terminos & Condiciones</a></li>
          <li><a class="text-muted" href="#">Acaerca de HSD Plus</a></li>
          <li><a class="text-muted" href="#">Sumate a nosotros</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Servicios</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Registrate</a></li>
          <li><a class="text-muted" href="#">Reserva</a></li>
          <li><a class="text-muted" href="#">Consulta</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5>Contactanos</h5>
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
    </div>
  </footer>
</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>