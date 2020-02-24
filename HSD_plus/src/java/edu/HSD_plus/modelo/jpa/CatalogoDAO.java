/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;


import edu.HSD_plus.modelo.dao.ICatalogoDAO;
import edu.HSD_plus.modelo.entities.Catalogo;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author SAM
 */
@Stateless
public class CatalogoDAO extends AbstractDAO<Catalogo> implements ICatalogoDAO {


    public CatalogoDAO() {
        super(Catalogo.class);
    }
    
}
