/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author SAM
 */
public class Jugadores {
    private int Doc_identidad;
    private String Nombre_Jugador;
    private int Numero_Camiseta;
    private String Posicion;
    private int Minutos_jugados;
    private int Goles;

    public Jugadores() {
        this.Doc_identidad = 0;
        this.Nombre_Jugador = "";
        this.Numero_Camiseta = 0;
        this.Posicion = "";
        this.Minutos_jugados = 0;
        this.Goles = 0;
    }

    public Jugadores(int Doc_identidad, String Nombre_Jugador, int Numero_Camiseta, String Posicion, int Minutos_jugados, int Goles) {
        this.Doc_identidad = Doc_identidad;
        this.Nombre_Jugador = Nombre_Jugador;
        this.Numero_Camiseta = Numero_Camiseta;
        this.Posicion = Posicion;
        this.Minutos_jugados = Minutos_jugados;
        this.Goles = Goles;
    }

    public int getDoc_identidad() {
        return Doc_identidad;
    }

    public void setDoc_identidad(int Doc_identidad) {
        this.Doc_identidad = Doc_identidad;
    }

    public String getNombre_Jugador() {
        return Nombre_Jugador;
    }

    public void setNombre_Jugador(String Nombre_Jugador) {
        this.Nombre_Jugador = Nombre_Jugador;
    }

    public int getNumero_Camiseta() {
        return Numero_Camiseta;
    }

    public void setNumero_Camiseta(int Numero_Camiseta) {
        this.Numero_Camiseta = Numero_Camiseta;
    }

    public String getPosicion() {
        return Posicion;
    }

    public void setPosicion(String Posicion) {
        this.Posicion = Posicion;
    }

    public int getMinutos_jugados() {
        return Minutos_jugados;
    }

    public void setMinutos_jugados(int Minutos_jugados) {
        this.Minutos_jugados = Minutos_jugados;
    }

    public int getGoles() {
        return Goles;
    }

    public void setGoles(int Goles) {
        this.Goles = Goles;
    }
    
    
}

