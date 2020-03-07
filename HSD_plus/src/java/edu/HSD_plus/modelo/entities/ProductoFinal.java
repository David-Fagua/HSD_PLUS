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
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "producto_final")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ProductoFinal.findAll", query = "SELECT p FROM ProductoFinal p")
    , @NamedQuery(name = "ProductoFinal.findByIdProductof", query = "SELECT p FROM ProductoFinal p WHERE p.idProductof = :idProductof")
    , @NamedQuery(name = "ProductoFinal.findByGrosor", query = "SELECT p FROM ProductoFinal p WHERE p.grosor = :grosor")
    , @NamedQuery(name = "ProductoFinal.findByFechaPromocion", query = "SELECT p FROM ProductoFinal p WHERE p.fechaPromocion = :fechaPromocion")
    , @NamedQuery(name = "ProductoFinal.findByDisponibilidad", query = "SELECT p FROM ProductoFinal p WHERE p.disponibilidad = :disponibilidad")
    , @NamedQuery(name = "ProductoFinal.findByExistencias", query = "SELECT p FROM ProductoFinal p WHERE p.existencias = :existencias")
    , @NamedQuery(name = "ProductoFinal.findByResponsable", query = "SELECT p FROM ProductoFinal p WHERE p.responsable = :responsable")})
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
    @Temporal(TemporalType.DATE)
    private Date fechaPromocion;
    @Column(name = "disponibilidad")
    private Boolean disponibilidad;
    @Basic(optional = false)
    @Column(name = "existencias")
    private int existencias;
    @Basic(optional = false)
    @Column(name = "responsable")
    private int responsable;
    @ManyToMany(mappedBy = "productoFinal", fetch = FetchType.LAZY)
    private List<Reservas> reservas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "producto", fetch = FetchType.LAZY)
    private List<Reservas> reservas1;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "articulofinal", fetch = FetchType.LAZY)
    private List<Catalogo> catalogo;
    @JoinColumn(name = "articulo", referencedColumnName = "id_articulo")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private InventarioGeneral articulo;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "productoFinal", fetch = FetchType.LAZY)
    private List<ProductoProceso> productoProceso;

    public ProductoFinal() {
    }

    public ProductoFinal(Integer idProductof) {
        this.idProductof = idProductof;
    }

    public ProductoFinal(Integer idProductof, String grosor, int existencias, int responsable) {
        this.idProductof = idProductof;
        this.grosor = grosor;
        this.existencias = existencias;
        this.responsable = responsable;
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

    public Date getFechaPromocion() {
        return fechaPromocion;
    }

    public void setFechaPromocion(Date fechaPromocion) {
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

    public int getResponsable() {
        return responsable;
    }

    public void setResponsable(int responsable) {
        this.responsable = responsable;
    }

    @XmlTransient
    public List<Reservas> getReservasList() {
        return reservas;
    }

    public void setReservasList(List<Reservas> reservasList) {
        this.reservas = reservasList;
    }

    @XmlTransient
    public List<Reservas> getReservasList1() {
        return reservas1;
    }

    public void setReservasList1(List<Reservas> reservasList1) {
        this.reservas1 = reservasList1;
    }

    @XmlTransient
    public List<Catalogo> getCatalogoList() {
        return catalogo;
    }

    public void setCatalogoList(List<Catalogo> catalogoList) {
        this.catalogo = catalogoList;
    }

    public InventarioGeneral getArticulo() {
        return articulo;
    }

    public void setArticulo(InventarioGeneral articulo) {
        this.articulo = articulo;
    }

    @XmlTransient
    public List<ProductoProceso> getProductoProcesoList() {
        return productoProceso;
    }

    public void setProductoProcesoList(List<ProductoProceso> productoProcesoList) {
        this.productoProceso = productoProcesoList;
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
