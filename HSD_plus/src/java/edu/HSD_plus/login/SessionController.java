/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.login;

import edu.HSD_plus.modelo.dao.IUsuariosDAO;
import edu.HSD_plus.modelo.entities.Usuarios;
import edu.HSD_plus.modelo.entities.Roles;
import edu.HSD_plus.util.MessageUtil;
import java.io.IOException;
import javax.inject.Named;
import javax.enterprise.context.SessionScoped;
import java.io.Serializable;
import java.util.List;
import javax.ejb.EJB;
import javax.faces.context.ExternalContext;
import javax.faces.context.FacesContext;

/**
 *
 * @author SAM
 */
@Named(value = "sessionController")
@SessionScoped
public class SessionController implements Serializable {

    @EJB
    private IUsuariosDAO uDAO;

    private String email;
    private String password;
    private Usuarios usuarioSelecionado;
    private Usuarios user;
    private List<Usuarios> usuarios;
    private Roles RolSelecionado;

    /**
     * Creates a new instance of SessionController
     */
    public SessionController() {
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Usuarios getUser() {
        return user;
    }

    public void setUser(Usuarios user) {
        this.user = user;
    }

    public Roles getRolSelecionado() {
        return RolSelecionado;
    }

    public void setRolSelecionado(Roles RolSelecionado) {
        this.RolSelecionado = RolSelecionado;
    }

    public String startSession() {
        if (email != null && email.trim().length() > 0
                && password != null && password.trim().length() > 0) {
            user = uDAO.findByEmailAndPassword(email, password);
            if (user != null) {
                if (user.getEstado() == 0) {

                    if (!user.getRolesList().isEmpty()) {
                        RolSelecionado = user.getRolesList().get(0);
                        return "/sesion/Admin/InicioA.xhtml?faces-redirect=true";
                    } else {
                        user = null;
                        MessageUtil.sendInfo(null, "El Usuario no tiene Rol", "Contacte al Administrador", Boolean.FALSE);
                    }
                } else {
                    user = null;
                    MessageUtil.sendInfo(null, "El Usuario esta Bloqueado", "Contacte al Administrador", Boolean.FALSE);
                }
            } else {
                MessageUtil.sendInfo(null, "Datos Incorrectos", "Verifique sus Datos y Vuelva a Intentar", Boolean.FALSE);
            }
        } else {
            MessageUtil.sendInfo(null, "Datos Obligatorios", "Debe diligenciar todos los Campos", Boolean.FALSE);
        }
        return "";
    }

    public void endSession() throws IOException {
        FacesContext fc = FacesContext.getCurrentInstance();
        ExternalContext ec = fc.getExternalContext();
        ec.invalidateSession();
        ec.redirect(ec.getRequestContextPath() + "/index.xhtml");
    }

    public boolean isStartSession() {
        return user != null;
    }

    public void validarSesion() throws IOException {
        if (!isStartSession()) {
            FacesContext fc = FacesContext.getCurrentInstance();
            ExternalContext ec = fc.getExternalContext();
            ec.redirect(ec.getRequestContextPath());
        }
    }

    public String recordarClave() {
        String salida = "";
        try {
            try {
                int numerodocumentoIn = Integer.parseInt(email);
                user = uDAO.consultaUsuario("", numerodocumentoIn);

            } catch (Exception e) {
                user = uDAO.consultaUsuario(email, 0);

            }

            if (user != null) {
                // recupera clave
                double numeroAleatori = Math.random() * 100000000;
                int claveInt = (int) numeroAleatori;
                user.setClave("" + claveInt);
                uDAO.edit(user);

                JavaMail.sendClaves(user.getCorreo(), user.getNombres(), user.getPrimerApellido(), user.getClave());

                MessageUtil.sendInfo(null, "Usuario", "Correo enviado correctamentet", false);

            } else {
                // usuario no existe
                MessageUtil.sendInfo(null, "Usuario", "No Existe en la base de Datos", false);

            }

        } catch (Exception e) {

        }
        return salida;
    }

    public long graficaUsu(boolean consultUsu) {

        try {
            return uDAO.cantidadUsuario(consultUsu);
        } catch (Exception e) {
        }
        return 0;
    }

    public Usuarios getUsuarioSelecionado() {
        return usuarioSelecionado;
    }

    public void setUsuarioSelecionado(Usuarios usuarioSelecionado) {
        this.usuarioSelecionado = usuarioSelecionado;
    }

    public void selecionarUsuario(Usuarios u) {
        System.out.print("Se ha Selecionado el Usuario");
        System.out.print(u);
        this.usuarioSelecionado = u;
    }

    public void actualizar() {
        try {
            if (usuarioSelecionado != null) {
                uDAO.edit(usuarioSelecionado);
                MessageUtil.sendInfo(null, "La Información del Usuario se ha Modificado Correctamente", "", false);
                usuarios = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del usuario", e.getMessage(), false);
        }
    }

    

    
    

}
