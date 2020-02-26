<%-- 
    Document   : Eliminar
    Created on : 11/11/2019, 07:42:32 PM
    Author     : SAM
--%>

<%@page import="java.sql.* "%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Ciudad</title>
    </head>
    <body>
        <%
            //CONECTANDO A LA BASE DE DATOS
            Connection con;
            String url = "jdbc:mysql://localhost:3306/hsd_plus";
            String Driver = "com.mysql.jdbc.Driver";
            String user = "root";
            String clave = "";
            Class.forName(Driver);
            con = DriverManager.getConnection(url, user, clave);
            //Empezamos Editando los Datos de la Tabla Usuario de la fila selecionada 
            PreparedStatement ps;
            
            int id_ciudad=Integer.parseInt(request.getParameter("id_ciudad"));
            ps = con.prepareStatement("delete from ciudad where id_ciudad="+id_ciudad);
            ps.executeUpdate();
            response.sendRedirect("../index.jsp");       
        %>
        
    </body>
</html>
