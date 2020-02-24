/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IDesechosDAO;
import edu.HSD_plus.modelo.entities.Desechos;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author SAM
 */
@Stateless
public class DesechosDAO extends AbstractDAO<Desechos> implements IDesechosDAO {


    public DesechosDAO() {
        super(Desechos.class);
    }
    
}
