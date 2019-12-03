<%-- 
    Document   : add
    Created on : 29/11/2019, 08:45:39 PM
    Author     : SAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Tipo de Documento</title>
    </head>
    <body>
        <div>
            <h1>Agregar Nuevo Tipo de Documento</h1>
            <form action="ControladorTipo_documento">
                Abrebiatura:<br>
                <input type="text" name="txtabrebiatura"><br>
                Nombre:<br>
                <input type="text" name="txtnombre"><br>
                <input type="submit" name="accion" value="Agregar"><br>
                <a href="ControladorTipo_documento?accion=listar">Regresar</a>

            </form>
        </div>
    </body>
</html>
