
package ModeloDAO;

import Config.Conexion;
import Interfaces.TIPO_DOCUMENTO;
import Modelo.Tipo_documento;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class Tipo_documentoDAO implements TIPO_DOCUMENTO{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Tipo_documento td=new Tipo_documento();

    @Override
    public List listar() {
        ArrayList<Tipo_documento>list=new ArrayList<>();
        String sql="select * from tipo_documento";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Tipo_documento tid=new Tipo_documento();
                tid.setId_tdocumento(rs.getInt("id_tdocumento"));
                tid.setAbrebiatura(rs.getString("abrebiatura"));
                tid.setNombre(rs.getString("nombre"));
                list.add(tid);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Tipo_documento list(int id_tdocumento) {
        String sql = "select * from tipo_documento where id_tdocumento=" + id_tdocumento;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                td.setId_tdocumento(rs.getInt("id_tdocumento"));
                td.setAbrebiatura(rs.getString("abrebiatura"));
                td.setNombre(rs.getString("nombre"));

            }
        } catch (Exception e) {
        }
        return td;
    }

    @Override
    public boolean add(Tipo_documento tid) {
        String sql="Insert into tipo_documento(abrebiatura,nombre) values('"+tid.getAbrebiatura()+"','"+tid.getNombre()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Tipo_documento tid) {
        String sql="update tipo_documento set abrebiatura='"+tid.getAbrebiatura()+"',nombre='"+tid.getNombre()+"'where id_tdocumento="+tid.getId_tdocumento();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_tdocumento) {
        String sql = "delete from tipo_documento where id_tdocumento=" + id_tdocumento;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
