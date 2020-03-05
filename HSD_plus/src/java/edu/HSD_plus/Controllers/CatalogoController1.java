/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.ICatalogoDAO;
import edu.HSD_plus.modelo.entities.Catalogo;
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
@Named(value = "CatalogoController")
@ViewScoped
public class CatalogoController1 implements Serializable{
    @EJB
    private ICatalogoDAO ctDAO;
    private List<Catalogo> catalogo;
    private Catalogo catalogoSelecionado;
    private Catalogo nuevoCatalogo;

    public CatalogoController1() {
    }
    
    @PostConstruct
    public void init(){
        nuevoCatalogo = new Catalogo();
    }
    
    public List<Catalogo> getVentas() {
        if (catalogo == null || catalogo.isEmpty()) {
            catalogo = ctDAO.findAll();
        }
        return catalogo;
    }

    public Catalogo getCatalogoSelecionado() {
        return catalogoSelecionado;
    }

    public void setCatalogoSelecionado(Catalogo catalogoSelecionado) {
        this.catalogoSelecionado = catalogoSelecionado;
    }

    public Catalogo getNuevoCatalogo() {
        return nuevoCatalogo;
    }

    public void setNuevoCatalogo(Catalogo nuevoCatalogo) {
        this.nuevoCatalogo = nuevoCatalogo;
    }
    
    public void selecionarCatalogo(Catalogo ct){
        System.out.print("Se ha Selecionado el Catalogo");
        System.out.print(ct);
        this.catalogoSelecionado = ct;
    } 
    
    public void eliminar() {
        try {
            ctDAO.remove(catalogoSelecionado);
            MessageUtil.sendInfo(null, "La Venta  se ha Eliminado Correctamente", "", false);
            catalogo = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar la Venta", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(catalogoSelecionado != null){
                ctDAO.edit(catalogoSelecionado);
                MessageUtil.sendInfo(null, "La Información de la Venta se ha Modificado Correctamente", "", false);
                catalogo = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información de la Venta", e.getMessage(), false);
        }
    }
}
