
package ModeloDAO;

import Config.Conexion;
import Interfaces.PROVEEDOR;
import Modelo.Proveedor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ProveedorDAO implements PROVEEDOR{
    Conexion cn=new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Proveedor pv = new Proveedor();

    @Override
    public List listar() {
       ArrayList<Proveedor>list=new ArrayList<>();
        String sql="select * from proveedor";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
                Proveedor pro=new Proveedor();
                pro.setId_empresa(rs.getInt("id_empresa"));
                pro.setNit(rs.getString("nit"));
                pro.setRazon_social(rs.getString("razon_social"));
                pro.setTelefono(rs.getString("telefono"));
                pro.setEmail(rs.getString("email"));
                pro.setDireccion(rs.getString("direccion"));
                pro.setCiudad(rs.getInt("ciudad"));
                list.add(pro);
            }
        } catch (Exception e) {
        }
        return list;
    }

    @Override
    public Proveedor list(int id_empresa) {
        String sql = "select * from proveedor where id_empresa=" + id_empresa;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                pv.setId_empresa(rs.getInt("id_empresa"));
                pv.setNit(rs.getString("nit"));
                pv.setRazon_social(rs.getString("razon-social"));
                pv.setTelefono(rs.getString("telefono"));
                pv.setEmail(rs.getString("email"));
                pv.setDireccion(rs.getString("direccion"));
                pv.setCiudad(rs.getInt("ciudad"));

            }
        } catch (Exception e) {
        }
        return pv;
    }

    @Override
    public boolean add(Proveedor pro) {
        String sql="Insert into proveedor(nit,razon_social,telefono,email,direccion,ciudad) values('"+pro.getNit()+"','"+pro.getRazon_social()+"','"+pro.getTelefono()+"','"+pro.getEmail()+"','"+pro.getDireccion()+"','"+pro.getCiudad()+"')";
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean edit(Proveedor pro) {
        String sql="update proveedor set nit='"+pro.getNit()+"',razon_social='"+pro.getRazon_social()+"',telefono='"+pro.getTelefono()+"',email='"+pro.getEmail()+"',direccion='"+pro.getDireccion()+"',ciudad='"+pro.getCiudad()+"'where id_empresa="+pro.getId_empresa();
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }

    @Override
    public boolean eliminar(int id_empresa)  {
        String sql = "delete from proveedor where id_empresa=" + id_empresa;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
        }
        return false;
    }
    
}
