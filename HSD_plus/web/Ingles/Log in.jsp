<!DOCTYPE html>
<html>
<head>
      <link rel="icon" type="image/png" href="../assets/Img/Logo.png">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <meta http-equiv="Content-Tipe" content="text/html; charset=UTF-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
</head>

<body>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="inicio.html" class="navbar-brand" href="#">
    <img src="../img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="inicio.html" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>

<br/>
<br/>
<br/>
<br/>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="Start.jsp" class="navbar-brand">
    <img src="../assets/Img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="Start.jsp" class="navbar-brand">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav mr-auto">
          <a href="Catalog.jsp" class="nav-link" style="color: #47A5B4;">Catalog
          </a>
          <a href="Contact Us.jsp" class="nav-link" style="color: #47A5B4;">Contact Us
          </a>
          <a href="About us.jsp" class="nav-link" style="color: #47A5B4;">About Us?
          </a>
          <a href="Mission and vision.jsp" class="nav-link" style="color: #47A5B4;">Mission and vision
          </a>
          <a href="Briefcase.jsp" class="nav-link" style="color: #47A5B4;">Briefcase
          </a>
        </li>
      </ul>
      <nav class="navbar navbar-light bg-light">
        <form class="form-inline">
          <input class="form-control mr-sm-2" type="Search" placeholder="Search" aria-label="Search">
          <button style="color:#47A5B4;" class="btn btn-outline-info my-2 my-sm-0" type="submit">search for</button>
        </form>
      </div>
      <div class="btn-group dropleft">
        <button style="background-color: #ffffff;" class="button" class="btn btn-sec btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          <img src="../assets/Img/Usuario.png" width="40" height="40" alt="">
        </button>
        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
          <a class="dropdown-item" href="Log in.jsp">Log in</a>
          <a class="dropdown-item" href="Register.jsp">Create account</a>
        </div>
      </div>
    </div>
  </nav>
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
      default:alert('Could not find your user.');
            return false; 
      }
  }
</script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>