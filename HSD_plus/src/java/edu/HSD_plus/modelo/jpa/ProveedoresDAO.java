/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IProveedoresDAO;
import edu.HSD_plus.modelo.entities.Proveedores;
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
public class ProveedoresDAO extends AbstractDAO<Proveedores> implements IProveedoresDAO {

    public ProveedoresDAO() {
        super(Proveedores.class);
    }


    public List<Proveedores> obtenerproveedorBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `proveedores`.`id_proveedor`,\n"
                + "    `proveedores`.`nit`,\n"
                + "    `proveedores`.`razon_social`,\n"
                + "    `proveedores`.`telefono`,\n"
                + "    `proveedores`.`email`,\n"
                + "    `proveedores`.`direccion`,\n"
                + "    `proveedores`.`ciudad`\n"
                + "FROM `hsd_plus`.`proveedores` WHERE razon_social LIKE '%" + cadena + "%';", Proveedores.class);
        List<Proveedores> lst = q.getResultList();
        return lst;
    }

}
