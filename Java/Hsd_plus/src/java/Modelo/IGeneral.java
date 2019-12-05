
package Modelo;

import java.math.BigDecimal;


public class IGeneral {
    int id_articulo;
    String nombre;
    String fecha_entrada;
    java.math.BigDecimal precio_de_compra;
    byte disponibilidad;
    java.math.BigDecimal peso_libra;
    int catidad_unitaria;
    String color;
    byte estado;
    int nit_proveedor;
    int id_Responsable;

    public IGeneral() {
    }

    public IGeneral(int id_articulo, String nombre, String fecha_entrada, BigDecimal precio_de_compra, byte disponibilidad, BigDecimal peso_libra, int catidad_unitaria, String color, byte estado, int nit_proveedor, int id_Responsable) {
        this.id_articulo = id_articulo;
        this.nombre = nombre;
        this.fecha_entrada = fecha_entrada;
        this.precio_de_compra = precio_de_compra;
        this.disponibilidad = disponibilidad;
        this.peso_libra = peso_libra;
        this.catidad_unitaria = catidad_unitaria;
        this.color = color;
        this.estado = estado;
        this.nit_proveedor = nit_proveedor;
        this.id_Responsable = id_Responsable;
    }

    public int getId_articulo() {
        return id_articulo;
    }

    public void setId_articulo(int id_articulo) {
        this.id_articulo = id_articulo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFecha_entrada() {
        return fecha_entrada;
    }

    public void setFecha_entrada(String fecha_entrada) {
        this.fecha_entrada = fecha_entrada;
    }

    public BigDecimal getPrecio_de_compra() {
        return precio_de_compra;
    }

    public void setPrecio_de_compra(BigDecimal precio_de_compra) {
        this.precio_de_compra = precio_de_compra;
    }

    public byte getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(byte disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public BigDecimal getPeso_libra() {
        return peso_libra;
    }

    public void setPeso_libra(BigDecimal peso_libra) {
        this.peso_libra = peso_libra;
    }

    public int getCatidad_unitaria() {
        return catidad_unitaria;
    }

    public void setCatidad_unitaria(int catidad_unitaria) {
        this.catidad_unitaria = catidad_unitaria;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public byte getEstado() {
        return estado;
    }

    public void setEstado(byte estado) {
        this.estado = estado;
    }

    public int getNit_proveedor() {
        return nit_proveedor;
    }

    public void setNit_proveedor(int nit_proveedor) {
        this.nit_proveedor = nit_proveedor;
    }

    public int getId_Responsable() {
        return id_Responsable;
    }

    public void setId_Responsable(int id_Responsable) {
        this.id_Responsable = id_Responsable;
    }
    
}
