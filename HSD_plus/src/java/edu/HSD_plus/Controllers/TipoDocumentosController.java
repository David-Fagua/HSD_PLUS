/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;


import edu.HSD_plus.modelo.dao.ITipodocumentosDAO;
import edu.HSD_plus.modelo.entities.Tipodocumentos;
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
@Named(value = "tipoDocumentosController")
@ViewScoped
public class TipoDocumentosController implements Serializable{

    @EJB
    private ITipodocumentosDAO tdDAO;
    private List<Tipodocumentos> tdocuments;
    private Tipodocumentos documentoSelecionado;
    private Tipodocumentos nuevoDocumento;
    
    
    public TipoDocumentosController() {
    }
    
    @PostConstruct
    public void init(){
        nuevoDocumento = new Tipodocumentos();
    }
    
    public List<Tipodocumentos> getTipodocumentos () {
        if(tdocuments == null || tdocuments.isEmpty()){
            tdocuments = tdDAO.findAll();
        }
        return tdocuments;
    }

    public Tipodocumentos getDocumentoSelecionado() {
        return documentoSelecionado;
    }

    public void setDocumentoSelecionado(Tipodocumentos documentoSelecionado) {
        this.documentoSelecionado = documentoSelecionado;
    }

    public Tipodocumentos getNuevoDocumento() {
        return nuevoDocumento;
    }

    public void setNuevoDocumento(Tipodocumentos nuevoDocumento) {
        this.nuevoDocumento = nuevoDocumento;
    }
    
    public void selecionarTipoDocumento(Tipodocumentos td){
        System.out.print("Se ha Selecionado el Tipo de Documento");
        System.out.print(td);
        this.documentoSelecionado = td;
    }
    
    public void registrar(){
        try {
            nuevoDocumento.setIdTdocumento(tdDAO.count() + 100);
            nuevoDocumento.setIdTdocumento(tdDAO.count() + 100);
            tdDAO.create(nuevoDocumento);
            MessageUtil.sendInfo(null, " Su Registro Exitoso ", "", false);
            tdocuments = null;
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Tipo de Documento porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            tdDAO.remove(documentoSelecionado);
            MessageUtil.sendInfo(null, "El Tipo de Documento se ha Eliminado Correctamente", "", false);
            tdocuments = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el El Tipo de Documento", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(documentoSelecionado != null){
                tdDAO.edit(documentoSelecionado);
                MessageUtil.sendInfo(null, "La Información del Tipo de Documento se ha Modificado Correctamente", "", false);
                tdocuments = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Tipo de Documento", e.getMessage(), false);
        }
    }
}
