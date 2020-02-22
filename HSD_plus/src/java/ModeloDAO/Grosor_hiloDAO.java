
package ModeloDAO;

import Config.Conexion;
import Interfaces.GROSOR_HILO;
import Modelo.Grosor_hilo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Grosor_hiloDAO implements GROSOR_HILO{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Grosor_hilo gr=new Grosor_hilo();
    
    @Override
    public List listar() {
       ArrayList<Grosor_hilo>list=new ArrayList<>();
        String sql="select * from grosor_hilo";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Grosor_hilo gro=new Grosor_hilo();
                gro.setId_grosor(rs.getInt("id_grosor"));
                gro.setMedida(rs.getInt("medida"));
                gro.setFecha_aprobacion(rs.getString("fecha_aprobacion"));
                list.add(gro);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Grosor_hilo list(int id_grosor) {
       String sql = "select * from grosor_hilo where id_grosor=" + id_grosor;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                gr.setId_grosor(rs.getInt("id_grosor"));
                gr.setMedida(rs.getInt("medida"));
                gr.setFecha_aprobacion(rs.getString("fecha_aprobacion"));
            }
        } catch (Exception e) {
        }
        return gr; 
    }

    @Override
    public boolean add(Grosor_hilo gro) {
       String sql="Insert into grosor_hilo(medida,fecha_aprobacion) values('"+gro.getMedida()+"','"+gro.getFecha_aprobacion()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Grosor_hilo gro) {
       String sql="update grosor_hilo set medida='"+gro.getMedida()+"',fecha_aprobacion='"+gro.getFecha_aprobacion()+"'where id_grosor="+gro.getId_grosor();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_grosor) {
        String sql = "delete from grosor_hilo where id_grosor=" + id_grosor;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
