/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IRolesDAO;
import edu.HSD_plus.modelo.entities.Roles;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author SAM
 */
@Stateless
public class RolesDAO extends AbstractDAO<Roles> implements IRolesDAO {

    public RolesDAO() {
        super(Roles.class);
    }

    public List<Roles> obteneRolBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `roles`.`id_rol`,\n"
                + "    `roles`.`nombre`,\n"
                + "    `roles`.`fecha_apertura`\n"
                + "FROM `hsd_plus`.`roles` WHERE nombre LIKE '%c%';", Roles.class);
        List<Roles> lst = q.getResultList();
        return lst;
    }

}
