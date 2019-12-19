package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class personaDAO implements Validar {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r;
    
    public int Validar (persona per){
        String sql="selet * from persona where Nombres=? and Correo=?";
        try {
            con=cn.getConnection();
            ps.setString(1, per.getnombre());
            ps.setString(1, per.getemail());
    }catch (Exeption e){
    }
}