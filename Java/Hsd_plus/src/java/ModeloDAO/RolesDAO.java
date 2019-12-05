
package ModeloDAO;

import Config.Conexion;
import Interfaces.ROLES;
import Modelo.Roles;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class RolesDAO implements ROLES{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Roles r=new Roles();

    
    @Override
    public List listar() {
        ArrayList<Roles>list=new ArrayList<>();
        String sql="select * from roles";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Roles rrl=new Roles();
                rrl.setId_rol(rs.getInt("id_rol"));
                rrl.setNombre(rs.getString("nombre"));
                rrl.setFecha_apertura(rs.getString("fecha_apertura"));
                list.add(rrl);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Roles list(int id_rol) {
        String sql="select * from roles where id_rol="+id_rol;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){ 
                r.setId_rol(rs.getInt("id_rol"));
                r.setNombre(rs.getString("nombre"));
                r.setFecha_apertura(rs.getString("fecha_apertura"));
                
            }
        } catch (Exception e) {
        }
        return r;
    }

    @Override
    public boolean add(Roles rrl) {
        String sql="Insert into roles (nombre, fecha_apertura) values('"+rrl.getNombre()+"','"+rrl.getFecha_apertura()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Roles rrl) {
        String sql="update roles set nombre='"+rrl.getNombre()+"',fecha_apertura='"+rrl.getFecha_apertura()+"'where id_rol="+rrl.getId_rol();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_rol) {
        String sql = "delete from roles where id_rol=" + id_rol;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
