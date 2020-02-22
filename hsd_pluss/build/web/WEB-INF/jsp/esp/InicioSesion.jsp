
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Iniciar Sesi�n</title>

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
                <a href="<%=request.getContextPath()%>/index.htm" class="navbar-brand" href="#">
                    <img src="<%=request.getContextPath()%>/assets/Img/Logo.png" width="35" height="35" >
                    <a href="<%=request.getContextPath()%>/index.htm" class="navbar-brand" href="#">HSD PLUS</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
            </nav>
        </div>

        <br/>
        <br/>
        <br/>
        <br/>

        

        <div class="container col-lg-5">
            <form action="../Validar" method="POST">
                <center>
                    <div class="form-group">
                        <img src="<%=request.getContextPath()%>/assets/Img/Logo.png" width="100" height="100" alt="HSD PLUS">
                        <h2>Iniciar Sesi�n</h2>
                    </div>
                    <div class="form-group">
                        <input required="true" class="form-control" type="email"  name="txtemail" value="usu01" placeholder="Ingresar Correo Electronico"  >
                    </div>
                    <div class="form-group">
                        <input required="true" class="form-control" type="password"  name="txtclave1" value="123" placeholder="Clave">
                    </div>
                    <div class="form-group col-lg-6">
                        <button class="btn btn-primary btn-block" type="submit" name="accion" value="Ingresar">Ingresar</button>
                    </div>
                        <div class="text-center">
                            <div class="text-center">
                                <p>No Recuerdo mi Contrase�a
                                    <a href="Recordar.htm">Recordar contrase�a</a>
                                </p>
                            </div>
                            <p>No estoy registrado
                                <a href="Registrar.htm">Registrar</a>
                            </p>
                        </div>
                       
                </center>
            </form>
            
        </div>

        <script src="js/bootstrap.min.js"></script>
    </body>
</html>