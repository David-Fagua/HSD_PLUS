/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;
import java.sql.Date;


/**
 *
 * @author SAM
 */
public class Roles implements Serializable{
    private int id_rol;
    private String nombre;
    private String fecha_apertura;

    public Roles() {
        this.id_rol = 0;
        this.nombre = "";
        this.fecha_apertura = "";
    }

    public Roles(int id_rol, String nombre, String fecha_apertura) {
        this.id_rol = id_rol;
        this.nombre = nombre;
        this.fecha_apertura = fecha_apertura;
    }

    public int getId_rol() {
        return id_rol;
    }

    public void setId_rol(int id_rol) {
        this.id_rol = id_rol;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_apertura() {
        return fecha_apertura;
    }

    public void setFecha_apertura(String fecha_apertura) {
        this.fecha_apertura = fecha_apertura;
    }

    public void setFecha_apertura(int fecha_apertura) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public void getFecha_apertura(Date fecha_apertura) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

       
    
}
