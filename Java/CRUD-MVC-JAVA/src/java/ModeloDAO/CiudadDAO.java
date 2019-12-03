
package ModeloDAO;

import Config.Conexion;
import Interfaces.CIUDAD;

import Modelo.Ciudad;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class CiudadDAO implements CIUDAD{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Ciudad c=new Ciudad();
    
    @Override
    public List listar() {
        ArrayList<Ciudad>list=new ArrayList<>();
        String sql="select * from ciudad";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Ciudad ciu=new Ciudad();
                ciu.setId_ciudad(rs.getInt("id_ciudad"));
                ciu.setNombre(rs.getString("nombre"));
                list.add(ciu);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Ciudad list(int id_ciudad) {
        String sql="select * from ciudad where id_ciudad="+id_ciudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){ 
                c.setId_ciudad(rs.getInt("id_ciudad"));
                c.setNombre(rs.getString("nombre"));
                
            }
        } catch (Exception e) {
        }
        return c;
    }

    @Override
    public boolean add(Ciudad ciu) {
        String sql="Insert into ciudad(nombre) values('"+ciu.getNombre()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Ciudad ciu) {
        String sql="update ciudad set nombre='"+ciu.getNombre()+"'where id_ciudad="+ciu.getId_ciudad();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_ciudad) {
        String sql = "delete from ciudad where id_ciudad=" + id_ciudad;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
