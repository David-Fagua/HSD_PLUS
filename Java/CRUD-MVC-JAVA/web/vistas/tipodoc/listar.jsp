

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Modelo.Tipo_documento"%>
<%@page import="ModeloDAO.Tipo_documentoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listar Tipo Documento</title>
    </head>
    <body>
        <div>
            <h1>Tipo documento</h1>
            <a href="ControladorTipo_documento?accion=add">Agregar Nuevo Registro</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID TIPO DE DOCUMENTO</th>
                        <th>ABREBIATURA</th>
                        <th>NOMBRE</th>
                        <th>ACCIONES</th>
                    </tr>
                </thead>
                <%
                    Tipo_documentoDAO dao=new Tipo_documentoDAO();
                    List<Tipo_documento>list=dao.listar();
                    Iterator<Tipo_documento>iter=list.iterator();
                    Tipo_documento tid=null;
                    while(iter.hasNext()){
                        tid=iter.next();
                    
                %>
                <tbody>
                    <tr>
                        <td><%= tid.getId_tdocumento()%></td>
                        <td><%= tid.getAbrebiatura()%></td>
                        <td><%= tid.getNombre() %></td>
                        <td>
                            <a href="ControladorTipo_documento?accion=editar&id_tdocumento=<%= tid.getId_tdocumento()%>"> Editar</a>
                            <a href="ControladorTipo_documento?accion=eliminar&id_tdocumento=<%= tid.getId_tdocumento()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
