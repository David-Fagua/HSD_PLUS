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
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

/**
 *
 * @author SAM
 */
@Named(value = "RolesController")
@ViewScoped
public class RolesController implements Serializable {

    @EJB
    private IRolesDAO rlsDAO;
    private List<Roles> Rroles;
    private Roles rolSelecionado;
    private Roles nuevoRol;

    public RolesController() {
    }
    
    @PostConstruct
    public void init(){
        nuevoRol = new Roles();
    }

    public List<Roles> getRoles() {
        if (Rroles == null || Rroles.isEmpty()) {
            Rroles = rlsDAO.findAll();
        }
        return Rroles;
    }

    public Roles getRolSelecionado() {
        return rolSelecionado;
    }

    public void setRolSelecionado(Roles rolSelecionado) {
        this.rolSelecionado = rolSelecionado;
    }

    public Roles getNuevoRol() {
        return nuevoRol;
    }

    public void setNuevoRol(Roles nuevoRol) {
        this.nuevoRol = nuevoRol;
    }

    public void selecionarRol(Roles rl){
        System.out.print("Se ha Selecionado el Articulo");
        System.out.print(rl);
        this.rolSelecionado = rl;
    }
    
    public void registrar(){
        try {
            nuevoRol.setIdRol(rlsDAO.count() + 100);
            nuevoRol.setIdRol(rlsDAO.count() + 100);
            rlsDAO.create(nuevoRol);
            Rroles = null;
            MessageUtil.sendInfo(null, " Su Registro Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Rol porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            rlsDAO.remove(rolSelecionado);
            MessageUtil.sendInfo(null, "El Rol se ha Eliminado Correctamente", "", false);
            Rroles = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el Rol", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(rolSelecionado != null){
                rlsDAO.edit(rolSelecionado);
                MessageUtil.sendInfo(null, "La Información del Rol se ha Modificado Correctamente", "", false);
                Rroles = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Rol", e.getMessage(), false);
        }
    }
}
