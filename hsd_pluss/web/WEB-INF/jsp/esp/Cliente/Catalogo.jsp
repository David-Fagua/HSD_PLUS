<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE htm>
<html>
<head>
	<title>Catalogo</title>
        
        <link rel="icon" type="image/png" href="../../assets/Img/Logo.png">

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<meta charset="utf-8">

</head>
<body>

<br/>
<br/>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="Catalogo.htm" class="navbar-brand" href="#">
    <img src="../../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="Catalogo.htm" class="navbar-brand" href="#">SHD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalogo.htm" class="nav-link" style="color: #47A5B4;">Catalogo
          </a>
          <a href="ConsultarCompras.htm" class="nav-link" style="color: #47A5B4;">Consultar Compras
          </a>
          <a href="Reservarproducto.htm" class="nav-link" style="color: #47A5B4;">Reservaciones
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
          <a class="dropdown-item" href="Cliente.htm">Cliente</a>
          <a class="dropdown-item" href="Cliente.htm">ConfiguraciÛn</a>
          <a class="dropdown-item" href="../../assets/Index.htm">Cerrar sesiÛn</a>
        </div>
      </nav>
    </div>
  </nav>
</div>

</br>

<div class="container">
	<div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="0" class="active"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="1"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="2"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="3"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="4"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="5"></li>
			<li data-target="producto.jspcarouselExampleIndicators" data-slide-to="6"></li>
		</ol>
	<div class="carousel-inner">
    <div class="carousel-item active">
      <img src="../../assets/Img/9.jpg" width="100" height="400px whilt " class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../../assets/Img/2.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
    <div class="carousel-item">
      <img src="../../assets/Img/3.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="../../assets/Img/4.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="../../assets/Img/5.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="../../assets/Img/6.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
     <div class="carousel-item">
      <img src="../../assets/Img/7.jpg" width="100" height="400px " class="d-block w-100" alt="...">
    </div>
    </div>
    <a class="carousel-control-prev" href="producto.jspcarouselExampleIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="producto.jspcarouselExampleIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
    </a>
    </div>
</div>

</br>

<div class="container">
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo de algodÛn</h3>
      <h6 href="producto.htm" class="lead">este tipo de hilo sirve para cualquier tipo de costura pero es muy aconsejado para coser a mano, ya que es suave y f√°cil de sacar y romper.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$8.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s.</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">14 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/12.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilos de seda</h3>
      <h6 href="producto.htm" class="lead"> usado para coser seda y otras telas delicadas ofrece una variedad crom√°tica muy limitada. Ideal para bordados. Su precio es m√°s elevado que el resto.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$25.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">6 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/2.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilos sintÈticos</h3>
      <h6 href="producto.htm" class="lead">el√°sticos y por norma general fabricados con poli√©ster. Existen modelos tambi√©n de algod√≥n y fibra sint√©tica. Este tipo es de los m√°s resistentes para todo tipo de telas.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$18.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">1 Jun</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/3.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo de algodÛn perlÈ</h3>
      <h6 href="producto.htm" class="lead">este tipo de hilo es ideal para coser lana, algod√≥n y tiene un tono brillante. Sirven para coser tanto a m√°quina como a mano. Este tipo de hilo es mucho m√°s resistente a los lavados y planchados.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$10.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">29 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/4.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="producto.htm" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$100.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/5.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="producto.htm" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$1.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/6.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="producto.htm" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$5.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/7.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="producto.htm" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$3.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/8.jpg" class="card-img-top" alt="img">
  </div>
</div>
</br>
  <div class="row featurette">
    <div class="col-md-6 order-md-2">
      <h3 class="featurette-heading">Hilo X</h3>
      <h6 href="producto.htm" class="lead">Hilo de alta calidad para limpiar los dientes.</h6>
      <div class="col-6 col-md">
      <a href="producto.htm" class="badge badge-info">Destacado</a>
    </div>
  </div>
  <div class="col-md-2 order-md-4">
    <h3 class="text-right" class="featurette-heading">$7.000</h3>
    <a href="producto.htm" style="float:right;" class="btn btn-primary btn-lg" role="button">Ver M·s</a>
  </div>
  <div class="col-md-1 order-md-3">
    <small  class="d-block mb-3 text-right text-muted">25 May</small>
  </div>
  <div class="col-md-3 order-md-1">
    <img src="../../assets/Img/9.jpg" class="card-img-top" alt="img">
  </div>
</div>

</br>
  
<div class="container">
  <footer class="pt-5 my-md-5 pt-md-5 border-top">
    <div class="row">
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">InformaciÛn ˙til</h5>
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
          <li><a class="text-muted" href="Registrar.htm">Registrate</a></li>
          <li><a class="text-muted" href="#">Reserva</a></li>
          <li><a class="text-muted" href="#">Consulta</a></li>
        </ul>
      </div>
      <div class="col-6 col-md">
        <h5 style="color:#47A5B4;">Contactenos</h5>
        <ul class="list-unstyled text-small">
          <li><a class="text-muted" href="#">Equipo</a></li>
          <li><a class="text-muted" href="#">LocalizaciÛn</a></li>
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