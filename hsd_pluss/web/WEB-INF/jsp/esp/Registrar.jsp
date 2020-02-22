<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar</title>

        <link rel="icon" type="image/png" href="../assets/Img/Logo.png">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Tipe" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    </head>

    <body>

        <br/>
        <br/>
        <br/>
        <br/>

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

        <div class="row">
            <div class="col-md-3">
            </div>
            <div class="col-md-6">
                <center>
                    <h2>Crear Cuenta</h2>
                </center>
                <form method="post">
                    <center>
                        
                        <div class="form-group input-group col-md-13">
                            <input  required="true" name="nombre" type="text" class="form-control" placeholder="Nombre">
                            <input required="true" name="apellidos" type="text" class="form-control" placeholder="Apellidos">
                        </div>
                        
                        <div class="form-group">
                            <input  required="true" name="username" type="text" class="form-control" placeholder="Nombre de Usuario">
                        </div>
                        <div class="form-group input-group col-md-13">
                            <input required="true" name="clave1" id="calve1" type="password" class="form-control" placeholder="Clave">
                            <input  required="true" name="clave2" id="calve2" type="password" class="form-control" placeholder="Confirmar Clave">
                        </div>
                        
                        <div class="form-group">
                            <input required="true" name="rol" type="text" class="form-control" placeholder="rol">
                        </div>
                        <div class="form-group input-group col-md-13">
                            <input required="true" name="tipo_documento" type="text" class="form-control" placeholder="tipo de documento">
                            <input required="true" name="numero_documento" type="text" class="form-control" placeholder="numero documento">
                        </div>
                        <div class="form-group">
                            <input required="true" name="email" type="email" class="form-control" placeholder="Correo">
                        </div>
                        <div class="form-group">
                            <input required="true" name="telefono" type="text" class="form-control" placeholder="telefono">
                        </div>
                        <div class="form-group">
                            <input required="true" name="ciudad" type="text" class="form-control" placeholder="ciudad">
                        </div>
                        
                        
                        <div>
                            <center>
                                <button href="Registrorealizado.jsp" value="Comprobar si son iguales" onClick="comprobarClave()" style="float:center;" class="btn btn-primary btn-lg">Registrar</button>
                            </center>  
                        </div>
                    </center>
                </form>
            </div>
        </div>

        <br>

        <script src="js/bootstrap.min.js"></script>

        <script>
                                                   if (clave1 != clave2) {
                                           alert("Las passwords deben de coincidir");
                                                   return false;
                                           } else {
                                           alert("Todo esta correcto");
                                                   return true;
                                           }
        </script>
     

    </body>
</html>