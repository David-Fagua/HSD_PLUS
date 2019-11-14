/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Ciudad;



/**
 *
 * @author SAM
 */
public class CiudadDao {
    public static boolean registrar(Ciudad ciu){
        try {
            String SQL="INSERT INTO ciudad (nombre) values (?)";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1, ciu.getNombre());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Ciudad>listar(){
        try {
            String SQL="SELECT * FROM ciudad";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Ciudad> lista=new ArrayList<>();
            Ciudad ciu;
            while(resultado.next()){
                ciu=new Ciudad();
                ciu.setId_ciudad(resultado.getInt("id_ciudad"));
                ciu.setNombre(resultado.getString("nombre"));
                lista.add(ciu);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
    public static boolean actualizar(Ciudad ciu){
        try {
            String SQL="UPDATE ciudad SET   nombre='"+ciu.getNombre()+"'where id_ciudad='"+ciu.getId_ciudad()+"'";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(2, ciu.getId_ciudad());
            st.setString(1, ciu.getNombre());
            
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
    public static boolean eliminar(Ciudad ciu){
        try {
            String SQL="DELETE FROM ciudad WHERE ('id_ciudad' = ?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, ciu.getId_ciudad());
            
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  String getCiudad(int ciu){
        try {
            String SQL="select nombre from ciudad where id_ciudad=?";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, ciu);
            ResultSet resultado=st.executeQuery();
            
            if(resultado.next()){
                return resultado.getString("nombre");
            }
            return "--";
        } catch (SQLException ex) {
            return null;
        }
    }
      
}