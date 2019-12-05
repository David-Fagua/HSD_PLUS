
package Modelo;


public class Grosor_hilo {
    int id_grosor;
    int medida;
    String fecha_aprobacion;

    public Grosor_hilo() {
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
