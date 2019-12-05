
package ModeloDAO;

import Config.Conexion;
import Interfaces.USUARIOS;
import Modelo.Usuarios;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class UsuariosDAO implements USUARIOS{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Usuarios us=new Usuarios();

    @Override
    public List listar() {
        ArrayList<Usuarios>list=new ArrayList<>();
        String sql="select * from Usuarios";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Usuarios usu=new Usuarios();
                usu.setId_user(rs.getInt("id_user"));
                usu.setNombre(rs.getString("nombre"));
                usu.setApellido(rs.getString("apellido"));
                usu.setPass(rs.getString("pass"));
                usu.setCorreo(rs.getString("correo"));
                usu.setRol(rs.getInt("rol"));
                usu.setTipo_documento(rs.getInt("tipo_documento"));
                usu.setNumero_documento(rs.getString("numero_documento"));
                usu.setTelefono(rs.getString("telefono"));
                usu.setCiudad(rs.getInt("ciudad"));
                list.add(usu);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Usuarios list(int id_user) {
        String sql = "select * from usuarios where id_user=" + id_user;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                us.setId_user(rs.getInt("id_user"));
                us.setNombre(rs.getString("nombre"));
                us.setApellido(rs.getString("apellido"));
                us.setPass(rs.getString("pass"));
                us.setCorreo(rs.getString("correo"));
                us.setRol(rs.getInt("rol"));
                us.setTipo_documento(rs.getInt("tipo_documento"));
                us.setNumero_documento(rs.getString("numero_documento"));
                us.setTelefono(rs.getString("telefono"));
                us.setCiudad(rs.getInt("ciudad"));

            }
        } catch (Exception e) {
        }
        return us;
    }

    @Override
    public boolean add(Usuarios usu) {
       String sql="Insert into usuarios(nombre, apellido, pass, correo, rol, tipo_documento, numero_documento, telefono, ciudad) values('"+usu.getNombre()+"','"+usu.getApellido()+"','"+usu.getPass()+"','"+usu.getCorreo()+"','"+usu.getRol()+"','"+usu.getTipo_documento()+"','"+usu.getNumero_documento()+"','"+usu.getTelefono()+"','"+usu.getCiudad()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false; 
    }

    @Override
    public boolean edit(Usuarios usu) {
        String sql="update usuarios set nombre='"+usu.getNombre()+"' ,apellido='"+usu.getApellido()+" ,pass='"+usu.getPass()+"' ,correo='"+usu.getCorreo()+"' ,rol='"+usu.getRol()+"' ,tipo_documento='"+usu.getTipo_documento()+"' ,numero_documento='"+usu.getNumero_documento()+"' ,telefono='"+usu.getTelefono()+"' ,ciudad='"+usu.getCiudad()+"' where id_user="+usu.getId_user();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_user) {
        String sql = "delete from usuarios where id_user=" + id_user;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
