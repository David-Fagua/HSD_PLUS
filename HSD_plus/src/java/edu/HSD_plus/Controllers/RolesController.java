/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IRolesDAO;
import edu.HSD_plus.modelo.entities.Roles;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.view.ViewScoped;

/**
 *
 * @author SAM
 */
@Named(value = "rolesController")
@ViewScoped
public class RolesController implements Serializable{

    @EJB
    private IRolesDAO rDAO;
    private List<Roles> roles;
    private Roles RolSelecionado;
    private Roles nuevoRol;
    private String textoBuscar="";
    /**
     * Creates a new instance of RolesController
     */
    public RolesController() {
    }

    public String getTextoBuscar() {
        return textoBuscar;
    }

    public void setTextoBuscar(String textoBuscar) {
        this.textoBuscar = textoBuscar;
    }
    
    
    
    @PostConstruct
    public void init(){
        nuevoRol = new Roles();        
    }
    
    public  List<Roles> getRoles(){
        if(roles == null || roles.isEmpty()){
            roles = rDAO.findAll();
        }
        return roles;
    }

    public Roles getRolSelecionado() {
        return RolSelecionado;
    }

    public void setRolSelecionado(Roles RolSelecionado) {
        this.RolSelecionado = RolSelecionado;
    }

    public Roles getNuevoRol() {
        return nuevoRol;
    }

    public void setNuevoRol(Roles nuevoRol) {
        this.nuevoRol = nuevoRol;
    }
    
    public void selecionarRol(Roles rl){
        System.out.print("Se ha Selecionado el Rol");
        System.out.print(rl);
        this.RolSelecionado = rl;
    }
    
    public void registrar(){
        try {
            nuevoRol.setIdRol(rDAO.count() + 100);
            nuevoRol.setIdRol(rDAO.count() + 100);
            rDAO.create(nuevoRol);
            MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
            roles = null;
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Rol porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            rDAO.remove(RolSelecionado);
            MessageUtil.sendInfo(null, "El Rol se ha Eliminado Correctamente", "", false);
            roles = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el El Rol", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(RolSelecionado != null){
                rDAO.edit(RolSelecionado);
                MessageUtil.sendInfo(null, "La Información del Rol se ha Modificado Correctamente", "", false);
                roles = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Rol", e.getMessage(), false);
        }
    }
    
    public void setListaRolesA(List<Roles> listaCiudades) {
        this.roles = listaCiudades;
    }
    
    public void llenarRoles(){
        roles=rDAO.obteneRolBusquedaxCadena(textoBuscar);
    }
}
