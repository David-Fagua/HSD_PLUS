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
public class Tipo_documento implements Serializable {
    private int id_tdocumento;
    private String abrebiatura;
    private String nombre;

    public Tipo_documento() {
        this.id_tdocumento = 0;
        this.abrebiatura = "";
        this.nombre = "";
    }

    public Tipo_documento(int id_tdocumento, String abrebiatura, String nombre) {
        this.id_tdocumento = id_tdocumento;
        this.abrebiatura = abrebiatura;
        this.nombre = nombre;
    }

    public int getId_tdocumento() {
        return id_tdocumento;
    }

    public void setId_tdocumento(int id_tdocumento) {
        this.id_tdocumento = id_tdocumento;
    }

    public String getAbrebiatura() {
        return abrebiatura;
    }

    public void setAbrebiatura(String abrebiatura) {
        this.abrebiatura = abrebiatura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    
    
}
