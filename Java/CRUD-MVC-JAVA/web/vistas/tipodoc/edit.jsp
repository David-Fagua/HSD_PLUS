<%-- 
    Document   : edit
    Created on : 29/11/2019, 08:45:51 PM
    Author     : SAM
--%>

<%@page import="Modelo.Tipo_documento"%>
<%@page import="ModeloDAO.Tipo_documentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Tipo de Documento</title>
    </head>
    <body>
        <div>
            <%
                Tipo_documentoDAO dao = new Tipo_documentoDAO();
                int id_tdocumento = Integer.parseInt((String) request.getAttribute("idtid"));
                Tipo_documento td =(Tipo_documento)dao.list(id_tdocumento);
            %>
            <h1>Modificar Tipo de Documento</h1>
            <form action="ControladorTipo_documento">
                Abrebiatura:<br>
                <input type="text" name="txtabrebiatura" value="<%= td.getAbrebiatura()%>" ><br>
                Nombre:<br>
                <input type="text" name="txtnombre" value="<%= td.getNombre()%>"><br>
                
                <input type="hidden" name="txtid_tdocumento" value="<%= td.getId_tdocumento()%>"><br>
                <input type="submit" name="accion" value="Actualizar"><br>
                <a href="ControladorTipo_documento?accion=listar">Regresar</a>

            </form>
        </div>
    </body>
</html>
