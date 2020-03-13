/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IRegistroVentasDAO;
import edu.HSD_plus.modelo.entities.RegistroVentas;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

/**
 *
 * @author SAM
 */
@Named(value = "RventasController")
@ViewScoped
public class RVentasController implements Serializable{
    
    @EJB
    private IRegistroVentasDAO rvDAO;
    private List<RegistroVentas> ventas;
    private RegistroVentas ventaSelecionada;
    private RegistroVentas nuevaVenta;

    public RVentasController() {
    }
    
    @PostConstruct
    public void init(){
        nuevaVenta = new RegistroVentas();
    }
    
    public List<RegistroVentas> getVentas() {
        if (ventas == null || ventas.isEmpty()) {
            ventas = rvDAO.findAll();
        }
        return ventas;
    }

    public RegistroVentas getVentaSelecionada() {
        return ventaSelecionada;
    }

    public void setVentaSelecionada(RegistroVentas ventaSelecionada) {
        this.ventaSelecionada = ventaSelecionada;
    }

    public RegistroVentas getNuevaVenta() {
        return nuevaVenta;
    }

    public void setNuevaVenta(RegistroVentas nuevaVenta) {
        this.nuevaVenta = nuevaVenta;
    }
    
    public void selecionarVenta(RegistroVentas rv){
        System.out.print("Se ha Selecionado la Venta");
        System.out.print(rv);
        this.ventaSelecionada = rv;
    }   
    
    public String registrar(){
        try {
            nuevaVenta.setIdVenta(rvDAO.count() + 100);
            nuevaVenta.setIdVenta(rvDAO.count() + 100);
            rvDAO.create(nuevaVenta);
            MessageUtil.sendInfo(null, " El Registro de la Venta Fue Exitoso ", "", false);
            return "/sesion/Admin/RVentas/listar.xhtml";
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar la Venta porfavor verifique bien los datos ", e.getMessage(), false);
        }
        return null;
    }
    
    public void eliminar() {
        try {
            rvDAO.remove(ventaSelecionada);
            MessageUtil.sendInfo(null, "La Venta  se ha Eliminado Correctamente", "", false);
            ventas = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar la Venta", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(ventaSelecionada != null){
                rvDAO.edit(ventaSelecionada);
                MessageUtil.sendInfo(null, "La Información de la Venta se ha Modificado Correctamente", "", false);
                ventas = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información de la Venta", e.getMessage(), false);
        }
    }    
}
