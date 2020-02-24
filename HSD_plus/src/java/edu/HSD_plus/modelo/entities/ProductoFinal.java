/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.entities;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "producto_final")
@NamedQueries({
    @NamedQuery(name = "ProductoFinal.findAll", query = "SELECT p FROM ProductoFinal p")
    , @NamedQuery(name = "ProductoFinal.findByIdProductof", query = "SELECT p FROM ProductoFinal p WHERE p.idProductof = :idProductof")
    , @NamedQuery(name = "ProductoFinal.findByGrosor", query = "SELECT p FROM ProductoFinal p WHERE p.grosor = :grosor")
    , @NamedQuery(name = "ProductoFinal.findByFechaPromocion", query = "SELECT p FROM ProductoFinal p WHERE p.fechaPromocion = :fechaPromocion")
    , @NamedQuery(name = "ProductoFinal.findByDisponibilidad", query = "SELECT p FROM ProductoFinal p WHERE p.disponibilidad = :disponibilidad")
    , @NamedQuery(name = "ProductoFinal.findByExistencias", query = "SELECT p FROM ProductoFinal p WHERE p.existencias = :existencias")})
public class ProductoFinal implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_productof")
    private Integer idProductof;
    @Basic(optional = false)
    @Column(name = "grosor")
    private String grosor;
    @Column(name = "fecha_promocion")
    private String fechaPromocion;
    @Column(name = "disponibilidad")
    private Boolean disponibilidad;
    @Basic(optional = false)
    @Column(name = "existencias")
    private int existencias;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "producto", fetch = FetchType.LAZY)
    private List<Reservas> reservas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productoFinal", fetch = FetchType.LAZY)
    private List<ProductofinalReservas> productofinalReservas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "articulofinal", fetch = FetchType.LAZY)
    private List<Catalogo> catalogo;
    @JoinColumn(name = "articulo", referencedColumnName = "id_articulo")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private InventarioGeneral articulo;
    @JoinColumn(name = "responsable", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios responsable;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productoFinal", fetch = FetchType.LAZY)
    private List<ProductoProceso> productoProceso;

    public ProductoFinal() {
    }

    public ProductoFinal(Integer idProductof) {
        this.idProductof = idProductof;
    }

    public ProductoFinal(Integer idProductof, String grosor, int existencias) {
        this.idProductof = idProductof;
        this.grosor = grosor;
        this.existencias = existencias;
    }

    public Integer getIdProductof() {
        return idProductof;
    }

    public void setIdProductof(Integer idProductof) {
        this.idProductof = idProductof;
    }

    public String getGrosor() {
        return grosor;
    }

    public void setGrosor(String grosor) {
        this.grosor = grosor;
    }

    public String getFechaPromocion() {
        return fechaPromocion;
    }

    public void setFechaPromocion(String fechaPromocion) {
        this.fechaPromocion = fechaPromocion;
    }

    public Boolean getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Boolean disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public int getExistencias() {
        return existencias;
    }

    public void setExistencias(int existencias) {
        this.existencias = existencias;
    }

    public List<Reservas> getReservas() {
        return reservas;
    }

    public void setReservas(List<Reservas> reservas) {
        this.reservas = reservas;
    }

    public List<ProductofinalReservas> getProductofinalReservas() {
        return productofinalReservas;
    }

    public void setProductofinalReservas(List<ProductofinalReservas> productofinalReservas) {
        this.productofinalReservas = productofinalReservas;
    }

    public List<Catalogo> getCatalogo() {
        return catalogo;
    }

    public void setCatalogo(List<Catalogo> catalogo) {
        this.catalogo = catalogo;
    }

    public InventarioGeneral getArticulo() {
        return articulo;
    }

    public void setArticulo(InventarioGeneral articulo) {
        this.articulo = articulo;
    }

    public Usuarios getResponsable() {
        return responsable;
    }

    public void setResponsable(Usuarios responsable) {
        this.responsable = responsable;
    }

    public List<ProductoProceso> getProductoProceso() {
        return productoProceso;
    }

    public void setProductoProceso(List<ProductoProceso> productoProceso) {
        this.productoProceso = productoProceso;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProductof != null ? idProductof.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductoFinal)) {
            return false;
        }
        ProductoFinal other = (ProductoFinal) object;
        if ((this.idProductof == null && other.idProductof != null) || (this.idProductof != null && !this.idProductof.equals(other.idProductof))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.ProductoFinal[ idProductof=" + idProductof + " ]";
    }
    
}
