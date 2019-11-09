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
public class Grosor_hilo implements Serializable{
    private int id_grosor;
    private int medida;
    private String fecha_aprobacion;

    public Grosor_hilo() {
        this.id_grosor = 0;
        this.medida = 0;
        this.fecha_aprobacion = "";
    }

    public Grosor_hilo(int id_grosor, int medida, String fecha_aprobacion) {
        this.id_grosor = id_grosor;
        this.medida = medida;
        this.fecha_aprobacion = fecha_aprobacion;
    }

    public int getId_grosor() {
        return id_grosor;
    }

    public void setId_grosor(int id_grosor) {
        this.id_grosor = id_grosor;
    }

    public int getMedida() {
        return medida;
    }

    public void setMedida(int medida) {
        this.medida = medida;
    }

    public String getFecha_aprobacion() {
        return fecha_aprobacion;
    }

    public void setFecha_aprobacion(String fecha_aprobacion) {
        this.fecha_aprobacion = fecha_aprobacion;
    }
    
    
    
}
