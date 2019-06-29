<?php
    include_once 'database.php';
    
    session_start();

    if(isset($_GET['cerrar_sesion'])){
        session_unset(); 

        // destroy the session 
        session_destroy(); 
    }
    
    if(isset($_SESSION['rol'])){
        switch($_SESSION['rol']){
            case 1:
                header('location: ./admin/inicio.html');
            break;

            case 2:
            header('location: ./cliente/iniciohtml');
            break;

            default:
        }
    }

    if(isset($_POST['username']) && isset($_POST['password'])){
        $username = $_POST['username'];
        $password = $_POST['password'];

        $db = new Database();
        $query = $db->connect()->prepare('SELECT *FROM usuarios WHERE username = :username AND password = :password');
        $query->execute(['username' => $username, 'password' => $password]);

        $row = $query->fetch(PDO::FETCH_NUM);
        
        if($row == true){
            $rol = $row[3];
            
            $_SESSION['rol'] = $rol;
            switch($rol){
            case 1:
            header('location: ./admin/inicio.html');
            break;

            case 2:
            header('location: ./cliente/iniciohtml');
            break;

                default:
            }
        }else{
            // no existe el usuario
            echo "Nombre de usuario o contraseña incorrecto";
        }
        

    }

?>
<!DOCTYPE html>
<html>
<head>
  <title>Iniciar Sesión</title>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  <meta charset="utf-8">
</head>

<body>

<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="inicio.html" class="navbar-brand" href="#">
    <img src="img/Logo.png" width="40" height="40" alt="HSD PLUS"></a>
    <a href="inicio.html" class="navbar-brand" href="#">HSD PLUS</a>
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
        <img src="img/Usuario.png" width="100" height="100" alt="HSD PLUS">
        <h2>Iniciar Sesión</h2>
      </center>
      <div class="myform-bottom">
        <form role="form" action="#" method="post">
          <div class="form-group">
            <input type="text" name="username" placeholder="Usuario" class="form-control">
          </div>
          <div class="form-group">
            <input type="password" name="password" placeholder="Contraseña" class="form-control" id="form-password">
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
          <button style="float:center;" class="btn btn-primary btn-lg" role="button" type="submit" class="mybtn">Iniciar sesión</button>
        </center>
    </form>
  </div>
</div>

<script src="js/bootstrap.min.js"></script>
</body>
</html>