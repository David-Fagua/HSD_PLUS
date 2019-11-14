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
public class Ciudad implements Serializable{
    private int id_ciudad;
    private String nombre;

    public Ciudad() {
        this.id_ciudad=0;
        this.nombre="";
    }

    public Ciudad(int id_ciudad, String nombre) {
        this.id_ciudad = id_ciudad;
        this.nombre = nombre;
    }

    public int getId_ciudad() {
        return id_ciudad;
    }

    public void setId_ciudad(int id_ciudad) {
        this.id_ciudad = id_ciudad;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
