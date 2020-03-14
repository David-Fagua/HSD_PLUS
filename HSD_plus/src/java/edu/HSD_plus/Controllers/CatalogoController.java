/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;

import edu.HSD_plus.Upload.FileUploadUtil;
import edu.HSD_plus.modelo.dao.ICatalogoDAO;
import edu.HSD_plus.modelo.entities.Catalogo;
import edu.HSD_plus.util.MessageUtil;
import java.io.Serializable;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.ejb.EJB;
import javax.enterprise.context.RequestScoped;
import javax.faces.context.FacesContext;
import javax.faces.view.ViewScoped;
import javax.inject.Named;
import javax.servlet.http.Part;

/**
 *
 * @author SAM
 */
@Named(value = "catalogoController")
@ViewScoped
public class CatalogoController implements Serializable {

    private final static String PATH_FOLDER_IMG_CATALOGO = "/resources/assets/Img/ImgCatalogo/";
    @EJB
    private ICatalogoDAO clDAO;
    private List<Catalogo> catalogo;
    private Catalogo nuevoCatalogo;
    private Part imgNuevoCatalogo;
    private Catalogo catalogoSelecionado;
    private String textoBuscar="";

    public CatalogoController() {
    }

    public String getTextoBuscar() {
        return textoBuscar;
    }

    public void setTextoBuscar(String textoBuscar) {
        this.textoBuscar = textoBuscar;
    }

    @PostConstruct
    public void init() {
        nuevoCatalogo = new Catalogo();
    }

    public List<Catalogo> getCatalogo() {
        if (catalogo == null || catalogo.isEmpty()) {
            catalogo = clDAO.findAll();
        }
        return catalogo;
    }

    public Catalogo getNuevoCatalogo() {
        return nuevoCatalogo;
    }

    public Part getImgNuevoCatalogo() {
        return imgNuevoCatalogo;
    }

    public void setImgNuevoCatalogo(Part imgNuevoCatalogo) {
        this.imgNuevoCatalogo = imgNuevoCatalogo;
    }

    public String getPathImagenCatalogo(Catalogo cl) {
        String img = (cl.getImagen() == null || cl.getImagen().length() == 0) ? "default.png" : cl.getCodigo() + "/" + cl.getImagen();
        return FacesContext.getCurrentInstance().getExternalContext().getRequestContextPath()
                + "/resources/assets/Img/ImgCatalogo/" + img;
    }

    public String registrarCatalogo() {
        try {
            if (nuevoCatalogo.getCodigo() != null && nuevoCatalogo.getNombre() != null && nuevoCatalogo.getNombre().length() > 0) {
                if (imgNuevoCatalogo != null) {
                    FileUploadUtil.saveFile(imgNuevoCatalogo,
                            FacesContext.getCurrentInstance().getExternalContext().getRealPath("") + PATH_FOLDER_IMG_CATALOGO + nuevoCatalogo.getCodigo() + "/",
                            imgNuevoCatalogo.getSubmittedFileName());
                    nuevoCatalogo.setImagen(imgNuevoCatalogo.getSubmittedFileName());
                }
                clDAO.create(nuevoCatalogo);
                MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
                return "/sesion/Admin/Catalogo/listar.xhtml";
            } else {
                MessageUtil.sendInfo(null, "los campos son obligatoros", "", false);
            }
        } catch (Exception e) {
            e.printStackTrace(System.err);
            MessageUtil.sendError(null, " Error al Registrar al Catalogo porfavor verifique bien sus datos ", e.getMessage(), false);
        }
        return null;

    }

    public void selecionarCatalogo(Catalogo cl) {
        System.out.print("Se ha Selecionado el Catalogo");
        System.out.print(cl);
        this.catalogoSelecionado = cl;
    }

    public Catalogo getCatalogoSelecionado() {
        return catalogoSelecionado;
    }

    public void setCatalogoSelecionado(Catalogo catalogoSelecionado) {
        this.catalogoSelecionado = catalogoSelecionado;
    }
    
    

    public void eliminar() {
        try {
            clDAO.remove(catalogoSelecionado);
            MessageUtil.sendInfo(null, "El Dato  se ha Eliminado Correctamente del Catalogo", "", false);
            catalogo = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el dato del Catalogo", e.getMessage(), false);
        }

    }
    
    public void actualizar() {
        try {
            if (catalogoSelecionado != null) {
                clDAO.edit(catalogoSelecionado);
                MessageUtil.sendInfo(null, "La Información se ha Modificado Correctamente en el Catalogo", "", false);
                catalogo = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Catalogo", e.getMessage(), false);
        }
    }

    
    public void setListaCatalogo(List<Catalogo> listaCatalogo) {
        this.catalogo = listaCatalogo;
    }
    
    public void llenarCatalogo(){
        catalogo=clDAO.obtenercatalogoBusquedaxCadena(textoBuscar);
    }
}
