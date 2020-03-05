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

       
    
}
