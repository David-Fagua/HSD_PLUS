<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>Registrar</title>
  
  <link rel="icon" type="image/png" href="../assets/Img/Logo.png">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
  <script>
function comprobarClave(){
    clave1 = document.f1.clave1.value
    clave2 = document.f1.clave2.value

    if (clave1 == clave2)
       alert("Las dos claves son iguales...\nRealizaríamos las acciones del caso positivo")
    else
       alert("Las dos claves son distintas...\nRealizaríamos las acciones del caso negativo")
}
</script>
  
</head>
<body>
    
<br/>
<br/>
<br/>
<br/>
    
<div>
  <nav class="navbar navbar-expand-lg fixed-top navbar-light bg-light">
    <a href="<%=request.getContextPath()%>/index.jsp" class="navbar-brand" href="#">
        <img src="<%=request.getContextPath()%>/assets/Img/Logo.png" width="35" height="35" >
    <a href="<%=request.getContextPath()%>/index.jsp" class="navbar-brand" href="#">HSD PLUS</a>
   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
    </button>
  </nav>
</div>

<div class="row">
    <div class="col-md-3">
    </div>
    <div class="col-md-6">
      <center>
        <h2>Crear Cuenta</h2>
      </center>
        <form action="" method="post">
        <center>
          <div class="form-group">
            <input required="true" type="email" class="form-control" placeholder="Correo">
          </div>
          <div class="form-group">
            <input  required="true" type="text" class="form-control" placeholder="Nombre">
          </div>
          <div class="form-group">
            <input required="true" type="text" class="form-control" placeholder="Apellido">
          </div>
          <div class="form-group">
            <input required="true" name="clave1" type="password" class="form-control" placeholder="Clave">
          </div>
          <div class="form-group">
            <input  required="true" name="clave2" type="password" class="form-control" placeholder="Confirmar Clave">
          </div>
        </center>
        </form>
      <center>
        <a href="Registrorealizado.jsp" value="Comprobar si son iguales" onClick="comprobarClave()" style="float:center;" class="btn btn-primary btn-lg" role="button">Registrar</a>
      </center>
    </form>
  </div>
</div>

<br>

<script src="js/bootstrap.min.js"></script>

</body>
</html>