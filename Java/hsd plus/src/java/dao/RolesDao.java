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
import model.Roles;


/**
 *
 * @author SAM
 */
public class RolesDao {
    public static boolean registrar(Roles r){
        try {
            String SQL="INSERT INTO roles (nombre,fecha_apertura) values (?,?);";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setString(1, r.getNombre());
            st.setString(2, r.getFecha_apertura());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Roles>listar(){
        try {
            String SQL="select * from roles";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Roles> lista=null;
            Roles r;
            while(resultado.next()){
                r=new Roles();
                r.setId_rol(resultado.getInt("id_rol"));
                r.setNombre(resultado.getString("nombre"));
                r.setFecha_apertura(resultado.getString("fecha_apertura"));
                lista.add(r);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
}
