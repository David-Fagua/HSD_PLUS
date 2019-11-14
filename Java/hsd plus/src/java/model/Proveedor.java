/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author SAM
 */
public class Proveedor implements Serializable{
    private String nit;
    private String razon_social;
    private String telefono;
    private String email;
    private String direccion;
    private int ciudad;

    public Proveedor() {
        this.nit = "";
        this.razon_social = "";
        this.telefono = "";
        this.email = "";
        this.direccion = "";
        this.ciudad = 0;
    }

    public Proveedor(String nit, String razon_social, String telefono, String email, String direccion, int ciudad) {
        this.nit = nit;
        this.razon_social = razon_social;
        this.telefono = telefono;
        this.email = email;
        this.direccion = direccion;
        this.ciudad = ciudad;
    }

    public String getNit() {
        return nit;
    }

    public void setNit(String nit) {
        this.nit = nit;
    }

    public String getRazon_social() {
        return razon_social;
    }

    public void setRazon_social(String razon_social) {
        this.razon_social = razon_social;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }
    
    
    
}
