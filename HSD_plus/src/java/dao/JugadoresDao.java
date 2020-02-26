/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import Conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Jugadores;

/**
 *
 * @author SAM
 */
public class JugadoresDao {
    public static boolean registrar(Jugadores ju){
        try {
            String SQL="INSERT INTO jugadoes (`Doc_identidad`, `Nombre_Jugador`, `Numero_Camiseta`, `Posicion`, `Minutos_jugados`, `Goles`) values (?,?,?,?,?,?)";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            st.setInt(1, ju.getDoc_identidad());
            st.setString(1, ju.getNombre_Jugador());
            st.setInt(1, ju.getNumero_Camiseta());
            st.setString(1, ju.getPosicion());
            st.setInt(1, ju.getMinutos_jugados());
            st.setInt(1, ju.getGoles());
            if(st.executeUpdate()>0){
                return true;
            }else{
            return false;    
            } 
        } catch (SQLException ex) {
            return false;
        }
    }
    
    public static  ArrayList<Jugadores>listar(){
        try {
            String SQL="SELECT * FROM jugadores";
            Connection con=Conexion.conectar();
            PreparedStatement st=con.prepareStatement(SQL);
            //st.setString(1, ciu.getNombre());
            ResultSet resultado=st.executeQuery();
            ArrayList<Jugadores> lista=new ArrayList<>();
            Jugadores ju;
            while(resultado.next()){
                ju=new Jugadores();
                ju.setDoc_identidad(resultado.getInt("Doc_identidad"));
                ju.setNombre_Jugador(resultado.getString("Nombre_Jugador"));
                ju.setNumero_Camiseta(resultado.getInt("Numero_Camiseta"));
                ju.setPosicion(resultado.getString("posicion"));
                ju.setMinutos_jugados(resultado.getInt("Minutos_jugados"));
                ju.setGoles(resultado.getInt("Goles"));
                lista.add(ju);
            }
            return lista;
        } catch (SQLException ex) {
            return null;
        }
    }
    
}
