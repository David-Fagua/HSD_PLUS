/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IInventarioGeneralDAO;
import edu.HSD_plus.modelo.entities.InventarioGeneral;
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
public class InventarioGeneralDAO extends AbstractDAO<InventarioGeneral> implements IInventarioGeneralDAO {

    public InventarioGeneralDAO() {
        super(InventarioGeneral.class);
    }

    public List<InventarioGeneral> obtenerIGeneralBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `inventario_general`.`id_articulo`,\n"
                + "    `inventario_general`.`nombre`,\n"
                + "    `inventario_general`.`fecha_entrada`,\n"
                + "    `inventario_general`.`preciode_compra`,\n"
                + "    `inventario_general`.`disponibilidad`,\n"
                + "    `inventario_general`.`peso_libra`,\n"
                + "    `inventario_general`.`cantidad_unitaria`,\n"
                + "    `inventario_general`.`color`,\n"
                + "    `inventario_general`.`estado`,\n"
                + "    `inventario_general`.`proveedor`,\n"
                + "    `inventario_general`.`responsable`\n"
                + "FROM `hsd_plus`.`inventario_general` WHERE nombre LIKE '%"+cadena+"%' ;", InventarioGeneral.class);
        List<InventarioGeneral> lst = q.getResultList();
        return lst;
    }
}
