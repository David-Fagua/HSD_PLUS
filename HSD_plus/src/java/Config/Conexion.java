
package config;

import Model.Usuarios;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/hsd_plus";
    String user="root";
    String pass="";
    PreparedStatement pst;
    ResultSet rs;
    Usuarios us=new Usuarios();
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
        }
        return con;
    }
    
    public int InicioSesion (String ema, String passw){
        int rol = 0;
        String sql = "select rol from usuarios where email='" + ema + "' and clave1='" + passw + "'";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
            pst = con.prepareStatement(sql);
            rs =pst.executeQuery();
            while(rs.next()){
                rol = rs.getInt(1);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
        }
        
        return rol;
    }

 
    
    
}
