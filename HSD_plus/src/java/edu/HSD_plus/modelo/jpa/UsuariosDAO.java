/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IUsuariosDAO;
import edu.HSD_plus.modelo.entities.Usuarios;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

/**
 *
 * @author SAM
 */
@Stateless
public class UsuariosDAO extends AbstractDAO<Usuarios> implements IUsuariosDAO {

    public UsuariosDAO() {
        super(Usuarios.class);
    }

    @Override
    public List<Usuarios> findAll(int i) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Usuarios findByEmailAndPassword(String email, String password) {

        try {
            TypedQuery<Usuarios> q = getEntityManager().createQuery("SELECT u FROM Usuarios u WHERE u.correo=:email AND u.clave=:pass", Usuarios.class);
            q.setParameter("email", email);
            q.setParameter("pass", password);
            return q.getSingleResult();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public int cantidadUsuario(boolean estado) {
        int cantidad = 0;
        try {
            Query q = em.createNativeQuery("SELECT COUNT(id_usuario) FROM Usuarios WHERE Usuarios.estado= ?");
            q.setParameter(1, estado);
            long cantidadL = (long) q.getSingleResult();
            cantidad = (int) cantidadL;
        } catch (Exception e) {
        }
        return cantidad;
    }

    @Override
    public int ingresarUsuarioRol(Usuarios usu) {
        int salida1 = 0;
        try {
            Query q = em.createNativeQuery("INSERT INTO `usuarios_roles`(`roles_id_rol`, `usuarios_id_usuario`) "
                    + " VALUES ('2',?);");
            q.setParameter(1, usu.getIdUsuario());
            salida1 = q.executeUpdate();
        } catch (Exception e) {
        }

        return salida1;
    }

    public List<Usuarios> obtenernombreUsuBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `usuarios`.`id_usuario`,\n"
                + "    `usuarios`.`imagen`,\n"
                + "    `usuarios`.`tipo_documento`,\n"
                + "    `usuarios`.`numerodocumento`,\n"
                + "    `usuarios`.`nombres`,\n"
                + "    `usuarios`.`primer_apellido`,\n"
                + "    `usuarios`.`segundo_apellido`,\n"
                + "    `usuarios`.`correo`,\n"
                + "    `usuarios`.`clave`,\n"
                + "    `usuarios`.`telefono`,\n"
                + "    `usuarios`.`ciudad`,\n"
                + "    `usuarios`.`estado`\n"
                + "FROM `hsd_plus`.`usuarios`  WHERE nombres LIKE '%s%';", Usuarios.class);
        List<Usuarios> lst = q.getResultList();
        return lst;
    }

    @Override
    public Usuarios consultaUsuario(String email, int numerodocumento) {
        Usuarios usuarioTest = null;
        try {
            Query q = em.createQuery("SELECT u FROM Usuarios u WHERE u.id_usuario=:numerodocumento OR u.correo=:email");
            q.setParameter("numerodocumento", numerodocumento);
            q.setParameter("email", email);

            List<Usuarios> listaUsuarios = q.getResultList();

            if (!listaUsuarios.isEmpty()) {
                usuarioTest = listaUsuarios.get(0);
            }

        } catch (Exception e) {
            e.getMessage();
        }
        return usuarioTest;
    } 
    

}
