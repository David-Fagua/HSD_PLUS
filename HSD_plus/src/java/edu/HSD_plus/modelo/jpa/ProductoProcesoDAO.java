/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IProductoProcesoDAO;
import edu.HSD_plus.modelo.entities.ProductoProceso;
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
public class ProductoProcesoDAO extends AbstractDAO<ProductoProceso> implements IProductoProcesoDAO {

    public ProductoProcesoDAO() {
        super(ProductoProceso.class);
    }

    public List<ProductoProceso> obtenerprocesoBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `producto_proceso`.`id_proceso`,\n"
                + "    `producto_proceso`.`fecha_proceso`,\n"
                + "    `producto_proceso`.`estado`,\n"
                + "    `producto_proceso`.`cantidad`,\n"
                + "    `producto_proceso`.`articulo_inicial`,\n"
                + "    `producto_proceso`.`articulo_inicial2`,\n"
                + "    `producto_proceso`.`producto_final`,\n"
                + "    `producto_proceso`.`responsable`\n"
                + "FROM `hsd_plus`.`producto_proceso` WHERE producto_final LIKE '%"+cadena+"%' ;", ProductoProceso.class);
        List<ProductoProceso> lst = q.getResultList();
        return lst;
    }
}
