
package Modelo;


public class Tipo_documento {
    int id_tdocumento;
    String abrebiatura;
    String nombre; 

    public Tipo_documento() {
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
