/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IProductoProcesoDAO;
import edu.HSD_plus.modelo.entities.ProductoProceso;
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
@Named(value = "productoProcesoController")
@ViewScoped
public class ProductoProcesoController implements Serializable{
    
    @EJB
    private IProductoProcesoDAO ppDAO;
    private List<ProductoProceso> proceso;
    private ProductoProceso procesoSelecionado;
    private ProductoProceso nuevoProceso;

    public ProductoProcesoController() {
    }
    
    @PostConstruct
    public void init(){
        nuevoProceso = new ProductoProceso();
    }

    public List<ProductoProceso> getProductoProceso() {
        if(proceso == null || proceso.isEmpty()){
            proceso = ppDAO.findAll();
        }
        return proceso;
    }

    public ProductoProceso getProcesoSelecionado() {
        return procesoSelecionado;
    }

    public void setProcesoSelecionado(ProductoProceso procesoSelecionado) {
        this.procesoSelecionado = procesoSelecionado;
    }

    public ProductoProceso getNuevoProceso() {
        return nuevoProceso;
    }

    public void setNuevoProceso(ProductoProceso nuevoProceso) {
        this.nuevoProceso = nuevoProceso;
    }
    
    public void selecionarProceso(ProductoProceso pp){
        System.out.print("Se ha Selecionado el Producto");
        System.out.print(pp);
        this.procesoSelecionado = pp;
    }
    
    public void registrar(){
        try {
            nuevoProceso.setIdProceso(ppDAO.count() + 100);
            nuevoProceso.setIdProceso(ppDAO.count() + 100);
            ppDAO.create(nuevoProceso);
            MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Proceso porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            ppDAO.remove(procesoSelecionado);
            MessageUtil.sendInfo(null, "El Proceso se ha Eliminado Correctamente", "", false);
            proceso = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el Proceso", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(procesoSelecionado != null){
                ppDAO.edit(procesoSelecionado);
                MessageUtil.sendInfo(null, "La Información del Proceso se ha Modificado Correctamente", "", false);
                proceso= null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Proceso", e.getMessage(), false);
        }
    }
}
