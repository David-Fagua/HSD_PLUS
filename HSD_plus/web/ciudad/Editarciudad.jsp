<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Tipo de Documento</title>
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
            //Empezamos Listado los Datos de la Tabla Usuario con la ficha selecionada 
            PreparedStatement ps;
            ResultSet rs;
            int id_ciudad=Integer.parseInt(request.getParameter("id_ciudad"));
            ps = con.prepareStatement("select * from ciudad where id_ciudad="+id_ciudad);
            rs = ps.executeQuery();
            while(rs.next()){
                
            
        %>
        
        <div>
            <h1>Modificar Ciudad</h1>
            <hr>
            <form action="" method="post" class="form-control" style="width: 500px; height: 400px">
                <div>
                    ID Ciudad:
                    <input type="text" readonly="" class="form-control" value="<%= rs.getInt("id_ciudad")%>"/>
                </div>
                <div>
                    Nombre:
                    <input type="text" name="txtnombre" class="form-control" value="<%= rs.getString("nombre")%>"/>
                </div>
                <input class="btn btn-primary btn-sm" type="submit" value="Guardar"/>
                <a class="btn btn-primary btn-sm" href="../index.jsp">Regresar</a>
            </form>
        <%}%>
        </div>
    </body>
</html>
<%
    String  nombre;
                nombre = request.getParameter("txtnombre");
                if (nombre!= null) {
                    ps = con.prepareStatement("update ciudad set nombre='"+ nombre +"'where id_tdocumento="+ id_ciudad);
                    ps.executeUpdate();
                    response.sendRedirect("../index.jsp");
                }
%>