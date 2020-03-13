/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;


import edu.HSD_plus.modelo.dao.ICiudadesDAO;
import edu.HSD_plus.modelo.entities.Ciudades;
import edu.HSD_plus.modelo.jpa.CiudadesDAO;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.view.ViewScoped;
import javax.inject.Named;
import org.glassfish.soteria.Utils;

/**
 *
 * @author SAM
 */
@Named(value = "CiudadesController")
@ViewScoped
public class CiudadesController implements Serializable{

    @EJB
    private ICiudadesDAO cdDAO;
    private List<Ciudades> ciudad;
    private Ciudades ciudadSelecionada;
    private Ciudades nuevaCiudad;
    private String textoBuscar="";

    public List<Ciudades> getCiudad() {
        return ciudad;
    }

    public void setCiudad(List<Ciudades> ciudad) {
        this.ciudad = ciudad;
    }

    public String getTextoBuscar() {
        return textoBuscar;
    }

    public void setTextoBuscar(String textoBuscar) {
        this.textoBuscar = textoBuscar;
    }
 
    
    /**
     * Creates a new instance of CiudadesController
     */
    public CiudadesController() {
    }
    
    @PostConstruct
    public void init(){
        nuevaCiudad = new Ciudades();
    }

    public List<Ciudades> getCiudades() {
        if(ciudad == null || ciudad.isEmpty()){
            ciudad = cdDAO.findAll();
        }
        return ciudad;
    }

    public Ciudades getCiudadSelecionada() {
        return ciudadSelecionada;
    }

    public void setCiudadSelecionada(Ciudades ciudadSelecionada) {
        this.ciudadSelecionada = ciudadSelecionada;
    }
        

    public Ciudades getNuevaCiudad() {
        return nuevaCiudad;
    }

    public void setNuevaCiudad(Ciudades nuevaCiudad) {
        this.nuevaCiudad = nuevaCiudad;
    }
    
    public void selecionarCiudad(Ciudades cd){
        System.out.print("Se ha Selecionado la Ciudad");
        System.out.print(cd);
        this.ciudadSelecionada = cd;
    }
    
    public void registrar(){
        try {
            nuevaCiudad.setIdCiudad(cdDAO.count() + 100);
            nuevaCiudad.setIdCiudad(cdDAO.count() + 100);
            cdDAO.create(nuevaCiudad);
            MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
            ciudad = null;
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar la Ciudad porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            cdDAO.remove(ciudadSelecionada);
            MessageUtil.sendInfo(null, "La Ciudad se ha Eliminado Correctamente", "", false);
            ciudad = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar la ciudad", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(ciudadSelecionada != null){
                cdDAO.edit(ciudadSelecionada);
                MessageUtil.sendInfo(null, "La Información de la ciudad se ha Modificado Correctamente", "", false);
                ciudad = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información de la ciudad", e.getMessage(), false);
        }
    }
    
    public void probarMetodo(String cadena){
        for(Ciudades ciu:cdDAO.obtenerciudadBusquedaxCadena(cadena)){
            System.out.println(ciu);
        }
    }

    public void setListaCiudades(List<Ciudades> listaCiudades) {
        this.ciudad = listaCiudades;
    }
    
    public void llenarCiudades(){
        ciudad=cdDAO.obtenerciudadBusquedaxCadena(textoBuscar);
    }
}
