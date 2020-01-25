package modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class personaDAO implements Validar {
    Connection con;
    Conexion cn=new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    int r=0;
    
    public int Validar(persona per){
        String sql="selet * from persona where Nombres=? and Correo=?";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement (sql);
            ps.setString(1, per.getnombre());
            ps.setString(2, per.getemail());
            rs=ps.executeQuery();
            while(rs.next()){
                r=r+1;
                per.setnombre(rs.getString("Nombres"));
                per.setemail(rs.getString("Correo"));
                
            }
            if (r==1) {
                return 1;
            }else{
                return 0;
            }
    }catch (SQLException e){
    }
}