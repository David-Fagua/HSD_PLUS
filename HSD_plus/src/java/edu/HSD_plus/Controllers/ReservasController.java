/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IReservasDAO;
import edu.HSD_plus.modelo.entities.Reservas;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.faces.view.ViewScoped;
import javax.inject.Named;
import javax.ejb.EJB;

/**
 *
 * @author SAM
 */
@Named(value = "ReservasController")
@ViewScoped
public class ReservasController implements Serializable{
    
    @EJB
    private IReservasDAO rsDAO;
    private List<Reservas> reserva;
    private Reservas reservaSelecionada;
    private Reservas nuevaReseva;

    public ReservasController() {
    }

    @PostConstruct
    public void init(){
        nuevaReseva = new Reservas();
    }

    public List<Reservas> getReservas() {
        if(reserva == null || reserva.isEmpty()){
            reserva = rsDAO.findAll();
        }
        return reserva;
    }

    public Reservas getReservaSelecionada() {
        return reservaSelecionada;
    }

    public void setReservaSelecionada(Reservas reservaSelecionada) {
        this.reservaSelecionada = reservaSelecionada;
    }

    public Reservas getNuevaReseva() {
        return nuevaReseva;
    }

    public void setNuevaReseva(Reservas nuevaReseva) {
        this.nuevaReseva = nuevaReseva;
    }

    

   
    
    public void selecionarReserva(Reservas rs){
        System.out.print("Se ha Selecionado la Reseva");
        System.out.print(rs);
        this.reservaSelecionada = rs;
    }
    
    public String registrar(){
        try {
            nuevaReseva.setIdReserva(rsDAO.count() + 100);
            nuevaReseva.setIdReserva(rsDAO.count() + 100);
            rsDAO.create(nuevaReseva);
            MessageUtil.sendInfo(null, " El  Registro de la Reserva Fue Exitoso ", "", false);
            return "/sesion/Admin/Reservas/listar.xhtml";
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar la Reserva porfavor verifique bien los datos ", e.getMessage(), false);
        }
        return null;
    }
    
    public void eliminar() {
        try {
            rsDAO.remove(reservaSelecionada);
            MessageUtil.sendInfo(null, "La Reserva se ha Eliminado Correctamente", "", false);
            reserva = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar la Reserva", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(reservaSelecionada != null){
                rsDAO.edit(reservaSelecionada);
                MessageUtil.sendInfo(null, "La Información de la Reseva se ha Modificado Correctamente", "", false);
                reserva= null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información de la Reserva", e.getMessage(), false);
        }
    }
}
