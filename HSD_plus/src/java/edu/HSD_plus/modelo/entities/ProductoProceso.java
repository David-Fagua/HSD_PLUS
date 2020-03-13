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
@Table(name = "producto_proceso")
@NamedQueries({
    @NamedQuery(name = "ProductoProceso.findAll", query = "SELECT p FROM ProductoProceso p")
    , @NamedQuery(name = "ProductoProceso.findByIdProceso", query = "SELECT p FROM ProductoProceso p WHERE p.idProceso = :idProceso")
    , @NamedQuery(name = "ProductoProceso.findByFechaProceso", query = "SELECT p FROM ProductoProceso p WHERE p.fechaProceso = :fechaProceso")
    , @NamedQuery(name = "ProductoProceso.findByEstado", query = "SELECT p FROM ProductoProceso p WHERE p.estado = :estado")
    , @NamedQuery(name = "ProductoProceso.findByCantidad", query = "SELECT p FROM ProductoProceso p WHERE p.cantidad = :cantidad")})
public class ProductoProceso implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_proceso")
    private Integer idProceso;
    @Column(name = "fecha_proceso")
    private String fechaProceso;
    @Column(name = "estado")
    private Short estado;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;
    @JoinColumn(name = "articulo_inicial2", referencedColumnName = "id_articulo")
    @ManyToOne(fetch = FetchType.LAZY)
    private InventarioGeneral articuloInicial2;
    @JoinColumn(name = "articulo_inicial", referencedColumnName = "id_articulo")
    @ManyToOne(fetch = FetchType.LAZY)
    private InventarioGeneral articuloInicial;
    @JoinColumn(name = "producto_final", referencedColumnName = "id_productof")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ProductoFinal productoFinal;
    @JoinColumn(name = "responsable", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios responsable;

    public ProductoProceso() {
    }

    public ProductoProceso(Integer idProceso) {
        this.idProceso = idProceso;
    }

    public ProductoProceso(Integer idProceso, int cantidad) {
        this.idProceso = idProceso;
        this.cantidad = cantidad;
    }

    public Integer getIdProceso() {
        return idProceso;
    }

    public void setIdProceso(Integer idProceso) {
        this.idProceso = idProceso;
    }

    public String getFechaProceso() {
        return fechaProceso;
    }

    public void setFechaProceso(String fechaProceso) {
        this.fechaProceso = fechaProceso;
    }

    public Short getEstado() {
        return estado;
    }

    public void setEstado(Short estado) {
        this.estado = estado;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public InventarioGeneral getArticuloInicial2() {
        return articuloInicial2;
    }

    public void setArticuloInicial2(InventarioGeneral articuloInicial2) {
        this.articuloInicial2 = articuloInicial2;
    }

    public InventarioGeneral getArticuloInicial() {
        return articuloInicial;
    }

    public void setArticuloInicial(InventarioGeneral articuloInicial) {
        this.articuloInicial = articuloInicial;
    }

    public ProductoFinal getProductoFinal() {
        return productoFinal;
    }

    public void setProductoFinal(ProductoFinal productoFinal) {
        this.productoFinal = productoFinal;
    }

    public Usuarios getResponsable() {
        return responsable;
    }

    public void setResponsable(Usuarios responsable) {
        this.responsable = responsable;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idProceso != null ? idProceso.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductoProceso)) {
            return false;
        }
        ProductoProceso other = (ProductoProceso) object;
        if ((this.idProceso == null && other.idProceso != null) || (this.idProceso != null && !this.idProceso.equals(other.idProceso))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.ProductoProceso[ idProceso=" + idProceso + " ]";
    }
    
}
