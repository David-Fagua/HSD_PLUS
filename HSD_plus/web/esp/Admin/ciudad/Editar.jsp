
<%@page import="Model.Ciudad"%>
<%@page import="DAO.CiudadDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Inicio</title>

        <link rel="icon" type="image/png" href="assets/Img/Logo.png">
        <link href="../../../assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="../../../assets/css/metisMenu.min.css" rel="stylesheet">
        <link href="../../../assets/css/timeline.css" rel="stylesheet">
        <link href="../../../assets/css/startmin.css" rel="stylesheet">
        <link href="../../../assets/css/morris.css" rel="stylesheet">
        <link href="../../../assets/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        
        <div >
           
            
            <form action="ControladorTotal?menu=Ciudad" method="POST">
                <div class="modal-header">						
                    <h3 class="modal-title">Agregar Ciudad</h3>
                    <button type="button" class="close" data-dismiss="modal"  aria-hidden="true">&times;</button>
                </div>
                <div class="modal-body">					
                    <div class="form-group">
                        <label>Nombre Ciudad:</label>
                        <input type="text" name="txtnombre" class="form-control"  >
                    </div>				
                </div>
                <div class="modal-footer">
                    <input type="button" class="btn btn-default" data-dismiss="modal" value="Cancelar">
                    <input type="submit" name="accion" type="submit" class="btn btn-primary btn" value="Agregar">
                    <input type="submit" name="accion" type="submit" class="btn btn-primary btn" value="Actualizar">
                </div>
            </form>
                
        </div>
        

 </body>
</html>
