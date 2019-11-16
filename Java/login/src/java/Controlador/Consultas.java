package Controlador;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.PreparedStatement;


/**
 *
 * @author fagua
 */
public class Consultas extends Conexion{
    
    public boolean autenticacion(String correo, String contraseña) {
        
      
        Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps= null;
        ResultSet rs = null;
        
        try {
            String Consulta = "select * from usuarios where usuario = ? and pass = ?";
            con =cn.getConnection();
            ps=con.prepareStatement(Consulta);
            ps.setString(1, correo);
            ps.setString(2, contraseña);
            rs = ps.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.print("Error" + e);
        }finally{
            try {
                if(getConnection()!= null) getConnection().close();
                if(ps != null) ps.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.print("Error" + e);
            }
        }
            
        return false;
    }
    public boolean registrar(String nombre, String apellido, String correo, String contraseña){
        
        PreparedStatement pst = null;
        
        Conexion cn = new Conexion();
        Connection con;
        PreparedStatement ps= null;
        ResultSet rs = null;
        
        try{
            String Consulta = "insert into usuarios (nombre, apellido, correo, pass) value(?,?,?,?)";
            con =cn.getConnection();
            ps=con.prepareStatement(Consulta);
            ps.setString(1, nombre);
            ps.setString(2, apellido);
            ps.setString(3, correo);
            ps.setString(4, contraseña);
           
            
            
            if(ps.executeUpdate() ==1){
                return true;
            }
            
        }catch(Exception ex){
            System.err.println("Error" + ex);
        }finally{
            try{
                if(getConnection() != null) getConnection().close();
                if(ps != null) pst.close();
            }catch (Exception e) {
                
            }
        }
        
        return false;
    }
    
}              