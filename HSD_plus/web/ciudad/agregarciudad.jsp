

<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar Ciudad</title>
    </head>
    <body>
        <div>
            <h1>Agregar Nueva ciudad</h1>
            <hr>
            <form action="" method="post">
                Nombre ciudad:
                <input type="text" name="txtnombre"/>
                
                <input class="btn btn-primary btn-sm" type="submit" value="Guardar"/>
                <a class="btn btn-primary btn-sm" href="../index.jsp">Regresar</a>
            </form>
        </div>
    </body>
</html>
<%
            //CONECTANDO A LA BASE DE DATOS
                Connection con;
                String url = "jdbc:mysql://localhost:3306/hsd_plus";
                String Driver = "com.mysql.jdbc.Driver";
                String user = "root";
                String clave = "";
                Class.forName(Driver);
                con = DriverManager.getConnection(url, user, clave);
                //Empezamos Listado los Datos de la Tabla Usuario
                PreparedStatement ps;
                String nombre;
                nombre = request.getParameter("txtnombre");
                if (nombre!=null && nombre!= null) {
                    ps = con.prepareStatement("insert into ciudad (nombre) value ('" + nombre + "') ");
                    ps.executeUpdate();
                    response.sendRedirect("../index.jsp");
                }
%>


