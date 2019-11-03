<!DOCTYPE html>
<html>
<head>
  <title>Iniciar Sesi�n</title>

  <link rel="icon" type="image/png" href="../Img/Logo.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
</head>

<body>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="inicio.html" class="navbar-brand" href="#">
    <img src="../img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="../inicio.html" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>

<br/>
<br/>
<br/>
<br/>

<div class="row">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
      <center>
        <img src="../img/Usuario.png" width="100" height="100" alt="HSD PLUS">
        <h2>Iniciar Sesión</h2>
      </center>
      <div class="myform-bottom">
        <form role="form" action="./Admin/inicio.html" method="post" class="" onsubmit="return validarInicio()">
          <div class="form-group">
            <input type="text" name="form-username" placeholder="Usuario" class="form-control" id="user-username">
          </div>
          <div class="form-group">
            <input type="password" name="form-password" placeholder="Contraseña" class="form-control" id="form-password">
          </div>

          <div class="text-center">
            <p>No estoy registrado
              <a href="Registrar.html">Registrar</a>
            </p>
          </div>
          <div class="text-center">
            <a href="Recordar.html">Recordar contraseña</a>
          </div>
          <br/>

        <center>
          <button style="float:center;" class="btn btn-primary btn-lg" role="button" type="submit" class="mybtn">Ingresar</button>
        </center>

        <div class="text-center">
          <p>Entrar como
            <a href="./Cliente/Catalogo.html">Cliente</a>
          </p>
        </div>
    </form>
  </div>
</div>


   

<script type="text/javascript">
  function validarInicio(){

    var clave = document.getElementById('form-password').value;

      var usuario1 = document.getElementById('user-username').value;


      switch (usuario1) {
      case 'admin@gmail.com':
      LocalStorege.setItem('LogUser','admin@gmail.com');
      return true;
      break;
      case 'cliente@gmail.com':
      LocalStorege.setItem('LogUser', 'cliente@gmail.com');
      return true;
      break;
      default:alert('Usuario no encontrado, verifique su informacion');
      return false; 
      }
  }
</script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>