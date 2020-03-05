/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.usuarios.controllers;

import edu.HSD_plus.modelo.dao.IUsuariosDAO;
import edu.HSD_plus.modelo.entities.Usuarios;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;

/**
 *
 * @author SAM
 */
@Named(value = "usuariosController")
@ViewScoped
public class UsuariosController implements Serializable {

    @EJB
    private IUsuariosDAO uDAO;
    private List<Usuarios> usuarios;
    private Usuarios usuarioSelecionado;
    private Usuarios nuevoUsuario;
    private Usuarios clave;

    /**
     * Creates a new instance of UsuariosController
     */
    public UsuariosController() {
    }

    @PostConstruct
    public void init() {
        nuevoUsuario = new Usuarios();
    }

    public List<Usuarios> getUsuarios() {
        if (usuarios == null || usuarios.isEmpty()) {
            usuarios = uDAO.findAll();
        }
        return usuarios;
    }

    public Usuarios getUsuarioSelecionado() {
        
        return usuarioSelecionado;
    }

    public void setUsuarioSelecionado(Usuarios usuarioSelecionado) {
        this.usuarioSelecionado = usuarioSelecionado;
    }

    public Usuarios getNuevoUsuario() {
        return nuevoUsuario;
    }

    public void setNuevoUsuario(Usuarios nuevoUsuario) {
        this.nuevoUsuario = nuevoUsuario;
    }

    public void selecionarUsuario(Usuarios u) {
        System.out.print("Se ha Selecionado el Usuario");
        System.out.print(u);
        this.usuarioSelecionado = u;
    }

    public void registrar() {
        try {
            System.out.print("Nombre: " + nuevoUsuario.getNombres());
            System.out.print("Apellidos: " + nuevoUsuario.getPrimerApellido());
            System.out.print("Correo: " + nuevoUsuario.getSegundoApellido());
            System.out.print("Clave: " + nuevoUsuario.getCorreo());
            System.out.print("Rol: " + nuevoUsuario.getRol());
            System.out.print("Estado: " + nuevoUsuario.getEstado());
            nuevoUsuario.setIdUsuario(uDAO.count() + 100);
            nuevoUsuario.setEstado(Short.valueOf("0"));
            uDAO.create(nuevoUsuario);
            MessageUtil.sendInfo(null, " Su Registro Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Usuario porfavor verifique bien sus datos ", e.getMessage(), false);
        }

    }

    public void eliminar() {
        try {
            uDAO.remove(usuarioSelecionado);
            MessageUtil.sendInfo(null, "El usuario se ha Eliminado Correctamente", "", false);
            usuarios = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el usuario", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(usuarioSelecionado != null){
                uDAO.edit(usuarioSelecionado);
                MessageUtil.sendInfo(null, "La Información del Usuario se ha Modificado Correctamente", "", false);
                usuarios = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del usuario", e.getMessage(), false);
        }
    }
    
    public void bloquearODesbloquear(){
        try {
            if(usuarioSelecionado != null){
                if(usuarioSelecionado.getEstado() != null
                    && (usuarioSelecionado.getEstado() != 0)){
                    usuarioSelecionado.setEstado((short) 0);
                } else{
                    usuarioSelecionado.setEstado((short)1);
                }
                uDAO.edit(usuarioSelecionado);
                MessageUtil.sendInfo(null, "El Estado se ha Modificado Correctamente", "", false);
                usuarios = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar el Estado del usuario", e.getMessage(), false);
        }
    }
    
    

    public boolean renderedBtnBloquear(Usuarios u) {
        return (u.getEstado() != null && u.getEstado() != 0);
    }

    public String getBtnValueBloquear() {
        if (usuarioSelecionado != null) {
            if (usuarioSelecionado.getEstado() != null
                    && (usuarioSelecionado.getEstado() != 0)) {
                return "Bloquear";
            }
            return "Desbloquear";
        }
        return "";
    }

    
    
    
    
}
