/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.ICatalogoDAO;
import edu.HSD_plus.modelo.entities.Catalogo;
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
public class CatalogoDAO extends AbstractDAO<Catalogo> implements ICatalogoDAO {

    public CatalogoDAO() {
        super(Catalogo.class);
    }

    public List<Catalogo> obtenercatalogoBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `catalogo`.`codigo`,\n"
                + "    `catalogo`.`nombre`,\n"
                + "    `catalogo`.`articulofinal`,\n"
                + "    `catalogo`.`descripcion`,\n"
                + "    `catalogo`.`fecha`,\n"
                + "    `catalogo`.`precio_unitario`,\n"
                + "    `catalogo`.`stock`,\n"
                + "    `catalogo`.`imagen`\n"
                + "FROM `hsd_plus`.`catalogo` WHERE nombre LIKE '%"+cadena+"%';", Catalogo.class);
        List<Catalogo> lst = q.getResultList();
        return lst;
    }

    

}
