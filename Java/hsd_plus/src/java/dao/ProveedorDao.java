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
import model.Proveedor;


/**
 *
 * @author SAM
 */
public class ProveedorDao {
    public static boolean registrar(Proveedor pr){
        try {
            String SQL="INSERT INTO proveedor (nit,razon_social,telefono,email,direccion,ciudad) values (?,?,?,?,?,?)";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1, pr.getNit());
            st.setString(2, pr.getRazon_social());
            st.setString(3, pr.getTelefono());
            st.setString(4, pr.getEmail());
            st.setString(5, pr.getDireccion());
            st.setInt(6, pr.getCiudad());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Proveedor>listar(){
        try {
            String SQL="SELECT * FROM proveedor;";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Proveedor> lista=new ArrayList<>();
            Proveedor pr;
            while(resultado.next()){
                pr=new Proveedor();
                pr.setNit(resultado.getString("nit"));
                pr.setRazon_social(resultado.getString("razon_social"));
                pr.setTelefono(resultado.getString("telefono"));
                pr.setEmail(resultado.getString("email"));
                pr.setDireccion(resultado.getString("direccion"));
                pr.setCiudad(resultado.getInt("ciudad"));
                lista.add(pr);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
    public static boolean actualizar( Proveedor pr){
        try {
            String SQL="UPDATE proveedor SET  razon_social = "+pr.getRazon_social()+", telefono = "+pr.getTelefono()+", email = "+pr.getEmail()+", direccion = "+pr.getDireccion()+", ciudad = "+pr.getCiudad()+" WHERE (`nit` = "+pr.getNit()+");";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            
            //st.setString(6, pr.getNit());
            //st.setString(1, pr.getRazon_social());
            //st.setString(2, pr.getTelefono());
            //st.setString(3, pr.getEmail());
            //st.setString(4, pr.getDireccion());
            //st.setInt(5, pr.getCiudad());
            if(st.executeUpdate()>0){
                return true;
            }else{
                //return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
        return false;
    }
    
    
    public static boolean eliminar( Proveedor pr){
        try {
            String SQL="DELETE FROM proveedor WHERE (`nit` = ?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1, pr.getNit());
            
            if(st.executeUpdate()>0){
                return true;
            }else{
                return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
}
