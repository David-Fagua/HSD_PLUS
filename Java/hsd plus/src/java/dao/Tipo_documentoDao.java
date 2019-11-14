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
import model.Tipo_documento;


/**
 *
 * @author SAM
 */
public class Tipo_documentoDao {
    public static boolean registrar(Tipo_documento td){
        try {
            String SQL="INSERT INTO tipo_documento (abreviatura,nombre) values (?,?)";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            
            st.setString(1, td.getAbrebiatura());
            st.setString(2, td.getNombre());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Tipo_documento>listar(){
        try {
            String SQL="select * from tipo_documento";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Tipo_documento> lista=new ArrayList<>();
            Tipo_documento td;
            while(resultado.next()){
                td=new Tipo_documento();
                td.setId_tdocumento(resultado.getInt("tdocumento"));
                td.setAbrebiatura(resultado.getString("abrebiatura"));
                td.setNombre(resultado.getString("nombre"));
                lista.add(td);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
    public static boolean actualizar(Tipo_documento td){
        try {
            String SQL="UPDATE `hsd_plus`.`tipo_documento` SET `abrebiatura` = ?, `nombre` = ? WHERE (`id_tdocumento` = ?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(3, td.getId_tdocumento());
            st.setString(1, td.getAbrebiatura());
            st.setString(2, td.getNombre());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
    public static boolean eliminar(Tipo_documento td){
        try {
            String SQL="DELETE FROM tipo_documento WHERE (id_tdocumento = ?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, td.getId_tdocumento());
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
