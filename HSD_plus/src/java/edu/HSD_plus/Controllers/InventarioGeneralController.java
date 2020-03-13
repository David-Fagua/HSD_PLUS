/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IInventarioGeneralDAO;
import edu.HSD_plus.modelo.entities.InventarioGeneral;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.inject.Named;
import javax.faces.view.ViewScoped;
import javax.inject.Named;

/**
 *
 * @author SAM
 */
@Named(value = "inventarioGeneralController")
@ViewScoped
public class InventarioGeneralController implements Serializable{
    
   @EJB
    private IInventarioGeneralDAO igDAO;
    private List<InventarioGeneral> articulos;
    private InventarioGeneral articuloSelecionado;
    private InventarioGeneral nuevoArticulo;

    public InventarioGeneralController() {
    }
    
    
    @PostConstruct
    public void init(){
        nuevoArticulo = new InventarioGeneral();
    }
    
    public List<InventarioGeneral> getInventarioGeneral() {
        if (articulos == null || articulos.isEmpty()) {
            articulos = igDAO.findAll();
        }
        return articulos;
    }

    public InventarioGeneral getArticuloSelecionado() {
        return articuloSelecionado;
    }

    public void setArticuloSelecionado(InventarioGeneral articuloSelecionado) {
        this.articuloSelecionado = articuloSelecionado;
    }
    
    public InventarioGeneral getNuevoAriculo(){
        return nuevoArticulo;
    }

    public void setNuevoArticulo(InventarioGeneral nuevoArticulo) {
        this.nuevoArticulo = nuevoArticulo;
    }
    
    public void selecionarArticulo(InventarioGeneral ig){
        System.out.print("Se ha Selecionado el Articulo");
        System.out.print(ig);
        this.articuloSelecionado = ig;
    }
    
    public String registrar(){
        try {
            System.out.print("Nombre: " + nuevoArticulo.getNombre());
            System.out.print("Apellidos: " + nuevoArticulo.getColor());
            System.out.print("Correo: " + nuevoArticulo.getCantidadUnitaria());
            System.out.print("Clave: " + nuevoArticulo.getDisponibilidad());
            System.out.print("Rol: " + nuevoArticulo.getFechaEntrada());
            System.out.print("Estado: " + nuevoArticulo.getEstado());
            nuevoArticulo.setIdArticulo(igDAO.count() + 100);
            nuevoArticulo.setIdArticulo(igDAO.count() + 100);
            igDAO.create(nuevoArticulo);
            MessageUtil.sendInfo(null, " Su Registro Exitoso ", "", false);
            return "/sesion/Admin/InGeneral/listar.xhtml";
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Articulo porfavor verifique bien sus datos ", e.getMessage(), false);
        }
       return null;
    }
    
    public void eliminar() {
        try {
            igDAO.remove(articuloSelecionado);
            MessageUtil.sendInfo(null, "El articulo se ha Eliminado Correctamente", "", false);
            articulos = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el articulo", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(articuloSelecionado != null){
                igDAO.edit(articuloSelecionado);
                MessageUtil.sendInfo(null, "La Información del articulo se ha Modificado Correctamente", "", false);
                articulos = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del articulo", e.getMessage(), false);
        }
    }
}
