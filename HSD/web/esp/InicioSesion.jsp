
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Iniciar Sesión</title>

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
    <a href="<%=request.getContextPath()%>/index.jsp" class="navbar-brand" href="#">
        <img src="<%=request.getContextPath()%>/assets/Img/Logo.png" width="35" height="35" >
    <a href="<%=request.getContextPath()%>/index.jsp" class="navbar-brand" href="#">HSD PLUS</a>
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
    <div class="col-md-4">
    </div>
    <div class="col-md-4">
      <center>
        <img src="<%=request.getContextPath()%>/assets/Img/Logo.png" width="100" height="100" alt="HSD PLUS">
        <h2>Iniciar Sesión</h2>
      </center>
        <div>
            <form action="Admin/Inicio.jsp" method="post">
                <div class="form-group">
                  <input required="true" type="email" placeholder="Example@email.com" name="correo" class="form-control">
                </div>
                <div class="form-group">
                    <input required="true" name="pass" id="pass" type="password" class="form-control" placeholder="Digite su contraseña">
                </div>
                <div class="text-center">
                    <div class="text-center">
                        <a href="Recordar.jsp">Recordar contraseña</a>
                    </div>
                    <p>No estoy registrado
                        <a href="Registrar.jsp">Registrar</a>
                    </p>
                </div>
                <center>
                    <button style="float:center;" class="btn btn-primary btn-lg" role="button" type="submit" name="envio">Ingresar</button>
                </center>
            </form>
            
            
            <br/>
        </div>
    </div>
</div>

<script src="js/bootstrap.min.js"></script>
</body>
</html>