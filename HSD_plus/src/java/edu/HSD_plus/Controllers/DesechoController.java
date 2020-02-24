/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.modelo.dao.IDesechosDAO;
import edu.HSD_plus.modelo.entities.Desechos;
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
@Named(value = "DesechoController")
@ViewScoped
public class DesechoController implements Serializable{
    @EJB
    private IDesechosDAO dsDAO;
    private List<Desechos> desecho;
    private Desechos desechoSelecionado;
    private Desechos nuevoDesecho;

    public DesechoController() {
    }
    
    @PostConstruct
    public void init(){
        nuevoDesecho = new Desechos();
    }
    
    public List<Desechos> getDesechos() {
        if(desecho == null || desecho.isEmpty()){
            desecho = dsDAO.findAll();
        }
        return desecho;
    }

    public Desechos getDesechoSelecionado() {
        return desechoSelecionado;
    }

    public void setDesechoSelecionado(Desechos desechoSelecionado) {
        this.desechoSelecionado = desechoSelecionado;
    }

    public Desechos getNuevoDesecho() {
        return nuevoDesecho;
    }

    public void setNuevoDesecho(Desechos nuevoDesecho) {
        this.nuevoDesecho = nuevoDesecho;
    }
    
    public void selecionarDesecho(Desechos ds){
        System.out.print("Se ha Selecionado el Desecho");
        System.out.print(ds);
        this.desechoSelecionado = ds;
    }

    public void registrar(){
        try {
            nuevoDesecho.setIdDesecho(dsDAO.count() + 100);
            nuevoDesecho.setIdDesecho(dsDAO.count() + 100);
            dsDAO.create(nuevoDesecho);
            MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Desecho porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            dsDAO.remove(desechoSelecionado);
            MessageUtil.sendInfo(null, "El Desecho se ha Eliminado Correctamente", "", false);
            desecho = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el Desecho", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(desechoSelecionado != null){
                dsDAO.edit(desechoSelecionado);
                MessageUtil.sendInfo(null, "La Información del Desecho se ha Modificado Correctamente", "", false);
                desecho= null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Desecho", e.getMessage(), false);
        }
    }
}
