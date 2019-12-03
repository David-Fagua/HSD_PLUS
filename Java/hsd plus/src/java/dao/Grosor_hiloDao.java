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
import model.Grosor_hilo;


/**
 *
 * @author SAM
 */
public class Grosor_hiloDao {
    public static boolean registrar(Grosor_hilo gro){
        try {
            String SQL="INSERT INTO grosor_hilo(medida,fecha_aprobacion) values (?,?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, gro.getMedida());
            st.setString (2, gro.getFecha_aprobacion());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Grosor_hilo>listar(){
        try {
            String SQL="select * from grosor_hilo;";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Grosor_hilo> lista=null;
            Grosor_hilo gro;
            while(resultado.next()){
                gro=new Grosor_hilo();
                gro.setId_grosor(resultado.getInt("id_grosor"));
                gro.setMedida(resultado.getInt("medida"));
                gro.setFecha_aprobacion(resultado.getString("fecha_aprobacion"));
                lista.add(gro);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
    
    public static boolean actualizar(Grosor_hilo gro){
        try {
            String SQL="update grosor_hilo set medida='"+gro.getMedida()+"'fecha_aprobacion'"+gro.getFecha_aprobacion()+"' where id_grosor'"+gro.getId_grosor()+"'";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(3, gro.getId_grosor());
            st.setInt(1, gro.getMedida());
            st.setString(2, gro.getFecha_aprobacion());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static boolean eliminar(Grosor_hilo gro){
        try {
            String SQL="DELETE FROM ciudad WHERE ('id_grosor' = '"+gro.getId_grosor()+"');";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, gro.getId_grosor());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
    
    
    
    
    
    
    
    
    public static  String getGrosor_hilo(int gro){
        try {
            String SQL="select medida from grosor_hilo where id_grosor=?";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, gro);
            ResultSet resultado=st.executeQuery();
            
            if(resultado.next()){
                return resultado.getString("medida");
            }
            return "--";
        } catch (SQLException ex) {
            return null;
        }
    }
}