/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IRolesDAO;
import edu.HSD_plus.modelo.entities.Roles;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author SAM
 */
@Named(value = "rolesController")
@RequestScoped
public class RolesController {

    @EJB
    private IRolesDAO rDAO;
    private List<Roles> roles;
    /**
     * Creates a new instance of RolesController
     */
    public RolesController() {
    }
    
    @PostConstruct
    public void init(){
    }
    
    public  List<Roles> getRoles(){
        if(roles == null || roles.isEmpty()){
            roles = rDAO.findAll();
        }
        return roles;
    }
    
}
