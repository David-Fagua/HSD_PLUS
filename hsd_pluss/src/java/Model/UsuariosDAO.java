
package Model;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;


public class UsuariosDAO {
    Conexion cn = new Conexion();
    Connection con;
    java.sql.PreparedStatement ps;
    ResultSet rs;
    int r;  
    
    public Usuarios validar(String email, String password) {
        Usuarios us = new Usuarios();
        String sql = "select * from usuarios where email=? and clave1=?";
        try {
            con = cn.Conexion();
            ps = con.prepareStatement(sql);
            ps.setString(1, email);
            ps.setString(2, password);
            rs = ps.executeQuery();
            while (rs.next()) {
                us.setEmail(rs.getString("email"));
                us.setClave1(rs.getString("clave1"));
                us.setNombre(rs.getString("nombre"));
                us.setApellidos(rs.getString("apellidos"));
            }
        } catch (Exception e) {
        }
        return us;
    }

    
}
