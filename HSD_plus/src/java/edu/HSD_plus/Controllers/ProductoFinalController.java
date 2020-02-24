/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;


import edu.HSD_plus.modelo.dao.IProductoFinalDAO;
import edu.HSD_plus.modelo.entities.ProductoFinal;
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
@Named(value = "productoFinalController")
@ViewScoped
public class ProductoFinalController implements Serializable{
    
    @EJB
    private IProductoFinalDAO pfDAO;
    private List<ProductoFinal> producto;
    private ProductoFinal productoSelecionado;
    private ProductoFinal nuevoProducto;

    public ProductoFinalController() {
    }
    
    @PostConstruct
    public void init(){
        nuevoProducto = new ProductoFinal();
    }

    public List<ProductoFinal> getProductoFinal() {
        if (producto == null || producto.isEmpty()) {
            producto = pfDAO.findAll();
        }
        return producto;
    }

    public ProductoFinal getProductoSelecionado() {
        return productoSelecionado;
    }

    public void setProductoSelecionado(ProductoFinal productoSelecionado) {
        this.productoSelecionado = productoSelecionado;
    }

    public ProductoFinal getNuevoProducto() {
        return nuevoProducto;
    }

    public void setNuevoProducto(ProductoFinal nuevoProducto) {
        this.nuevoProducto = nuevoProducto;
    }
    
    public void selecionarProducto(ProductoFinal pf){
        System.out.print("Se ha Selecionado el Producto");
        System.out.print(pf);
        this.productoSelecionado = pf;
    }
    
    
    public void registrar(){
        try {
            nuevoProducto.setIdProductof(pfDAO.count() + 100);
            nuevoProducto.setIdProductof(pfDAO.count() + 100);
            pfDAO.create(nuevoProducto);
            MessageUtil.sendInfo(null, " Su Registro Fue Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Producto porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            pfDAO.remove(productoSelecionado);
            MessageUtil.sendInfo(null, "El Producto se ha Eliminado Correctamente", "", false);
            producto = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el producto", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(productoSelecionado != null){
                pfDAO.edit(productoSelecionado);
                MessageUtil.sendInfo(null, "La Información del Producto se ha Modificado Correctamente", "", false);
                producto = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Producto", e.getMessage(), false);
        }
    }
}
