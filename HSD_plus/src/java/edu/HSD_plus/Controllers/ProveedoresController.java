/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Controllers;


import edu.HSD_plus.modelo.dao.IProveedoresDAO;
import edu.HSD_plus.modelo.entities.Proveedores;
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
@Named(value = "proveedoresController")
@ViewScoped
public class ProveedoresController implements Serializable{
    
   @EJB
    private IProveedoresDAO proDAO;
    private List<Proveedores>   proveedor;
    private Proveedores proveedorSelecionado;
    private Proveedores nuevoProveedor;

    public ProveedoresController() {
    }

    
    
    
    @PostConstruct
    public void init(){
        nuevoProveedor = new Proveedores();
    }

    public List<Proveedores> getProveedor() {
        if (proveedor == null || proveedor.isEmpty()) {
            proveedor = proDAO.findAll();
        }
        return proveedor;
    }
    
    

    public Proveedores getProveedorSelecionado() {
        return proveedorSelecionado;
    }

    public void setProveedorSelecionado(Proveedores proveedorSelecionado) {
        this.proveedorSelecionado = proveedorSelecionado;
    }
    
    public Proveedores getNuevoProveedor(){
        return nuevoProveedor;
    }

    public void setNuevoProveedor(Proveedores nuevoProveedor) {
        this.nuevoProveedor = nuevoProveedor;
    }
    
    public void selecionarProveedor(Proveedores pr){
        System.out.print("Se ha Selecionado el Proveedor");
        System.out.print(pr);
        this.proveedorSelecionado = pr;
    }
    
    public void registrar(){
        try {
            System.out.print("Nit: " + nuevoProveedor.getNit());
            System.out.print("Nombre: " + nuevoProveedor.getRazonSocial());
            System.out.print("Correo: " + nuevoProveedor.getEmail());
            System.out.print("Direccion: " + nuevoProveedor.getDireccion());
            nuevoProveedor.setIdProveedor(proDAO.count() + 100);
            nuevoProveedor.setIdProveedor(proDAO.count() + 100);
            proDAO.create(nuevoProveedor);
            MessageUtil.sendInfo(null, " Su Registro Exitoso ", "", false);
        } catch (Exception e) {
            MessageUtil.sendError(null, " Error al Registrar el Proveedor porfavor verifique bien sus datos ", e.getMessage(), false);
        }
    }
    
    public void eliminar() {
        try {
            proDAO.remove(proveedorSelecionado);
            MessageUtil.sendInfo(null, "El Proveedor se ha Eliminado Correctamente", "", false);
            proveedor = null;
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "error al eliminar el Proveedor", e.getMessage(), false);
        }

    }
    
    public void actualizar(){
        try {
            if(proveedorSelecionado != null){
                proDAO.edit(proveedorSelecionado);
                MessageUtil.sendInfo(null, "La Información del Proveedor se ha Modificado Correctamente", "", false);
                proveedor = null;
            }
        } catch (Exception e) {
            e.printStackTrace();
            MessageUtil.sendError(null, "Error al Modificar la Información del Proveedor", e.getMessage(), false);
        }
    }
}

