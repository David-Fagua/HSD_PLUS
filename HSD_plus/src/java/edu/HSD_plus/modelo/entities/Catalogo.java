/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "catalogo")
@NamedQueries({
    @NamedQuery(name = "Catalogo.findAll", query = "SELECT c FROM Catalogo c")
    , @NamedQuery(name = "Catalogo.findByCodigo", query = "SELECT c FROM Catalogo c WHERE c.codigo = :codigo")
    , @NamedQuery(name = "Catalogo.findByNombre", query = "SELECT c FROM Catalogo c WHERE c.nombre = :nombre")
    , @NamedQuery(name = "Catalogo.findByDescripcion", query = "SELECT c FROM Catalogo c WHERE c.descripcion = :descripcion")
    , @NamedQuery(name = "Catalogo.findByFecha", query = "SELECT c FROM Catalogo c WHERE c.fecha = :fecha")
    , @NamedQuery(name = "Catalogo.findByPrecioUnitario", query = "SELECT c FROM Catalogo c WHERE c.precioUnitario = :precioUnitario")
    , @NamedQuery(name = "Catalogo.findByStock", query = "SELECT c FROM Catalogo c WHERE c.stock = :stock")
    , @NamedQuery(name = "Catalogo.findByImagen", query = "SELECT c FROM Catalogo c WHERE c.imagen = :imagen")})
public class Catalogo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "codigo")
    private Integer codigo;
    @Column(name = "nombre")
    private String nombre;
    @Column(name = "descripcion")
    private String descripcion;
    @Column(name = "fecha")
    private String fecha;
    @Basic(optional = false)
    @Column(name = "precio_unitario")
    private long precioUnitario;
    @Basic(optional = false)
    @Column(name = "stock")
    private int stock;
    @Column(name = "imagen")
    private String imagen;
    @JoinColumn(name = "articulofinal", referencedColumnName = "id_productof")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ProductoFinal articulofinal;

    public Catalogo() {
    }

    public Catalogo(Integer codigo) {
        this.codigo = codigo;
    }

    public Catalogo(Integer codigo, long precioUnitario, int stock) {
        this.codigo = codigo;
        this.precioUnitario = precioUnitario;
        this.stock = stock;
    }

    public Integer getCodigo() {
        return codigo;
    }

    public void setCodigo(Integer codigo) {
        this.codigo = codigo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public long getPrecioUnitario() {
        return precioUnitario;
    }

    public void setPrecioUnitario(long precioUnitario) {
        this.precioUnitario = precioUnitario;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public ProductoFinal getArticulofinal() {
        return articulofinal;
    }

    public void setArticulofinal(ProductoFinal articulofinal) {
        this.articulofinal = articulofinal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (codigo != null ? codigo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Catalogo)) {
            return false;
        }
        Catalogo other = (Catalogo) object;
        if ((this.codigo == null && other.codigo != null) || (this.codigo != null && !this.codigo.equals(other.codigo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.Catalogo[ codigo=" + codigo + " ]";
    }
    
}
