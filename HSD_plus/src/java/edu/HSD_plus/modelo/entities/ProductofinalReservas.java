/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "productofinal_reservas")
@NamedQueries({
    @NamedQuery(name = "ProductofinalReservas.findAll", query = "SELECT p FROM ProductofinalReservas p")
    , @NamedQuery(name = "ProductofinalReservas.findByReservasIdReserva", query = "SELECT p FROM ProductofinalReservas p WHERE p.productofinalReservasPK.reservasIdReserva = :reservasIdReserva")
    , @NamedQuery(name = "ProductofinalReservas.findByProductoFinalIdProductof", query = "SELECT p FROM ProductofinalReservas p WHERE p.productofinalReservasPK.productoFinalIdProductof = :productoFinalIdProductof")
    , @NamedQuery(name = "ProductofinalReservas.findByCantidad", query = "SELECT p FROM ProductofinalReservas p WHERE p.cantidad = :cantidad")
    , @NamedQuery(name = "ProductofinalReservas.findByPresioTotal", query = "SELECT p FROM ProductofinalReservas p WHERE p.presioTotal = :presioTotal")})
public class ProductofinalReservas implements Serializable {

    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected ProductofinalReservasPK productofinalReservasPK;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;
    @Column(name = "presio_total")
    private Long presioTotal;
    @JoinColumn(name = "reservas_id_reserva", referencedColumnName = "id_reserva", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Reservas reservas;
    @JoinColumn(name = "producto_final_id_productof", referencedColumnName = "id_productof", insertable = false, updatable = false)
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ProductoFinal productoFinal;

    public ProductofinalReservas() {
    }

    public ProductofinalReservas(ProductofinalReservasPK productofinalReservasPK) {
        this.productofinalReservasPK = productofinalReservasPK;
    }

    public ProductofinalReservas(ProductofinalReservasPK productofinalReservasPK, int cantidad) {
        this.productofinalReservasPK = productofinalReservasPK;
        this.cantidad = cantidad;
    }

    public ProductofinalReservas(int reservasIdReserva, int productoFinalIdProductof) {
        this.productofinalReservasPK = new ProductofinalReservasPK(reservasIdReserva, productoFinalIdProductof);
    }

    public ProductofinalReservasPK getProductofinalReservasPK() {
        return productofinalReservasPK;
    }

    public void setProductofinalReservasPK(ProductofinalReservasPK productofinalReservasPK) {
        this.productofinalReservasPK = productofinalReservasPK;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Long getPresioTotal() {
        return presioTotal;
    }

    public void setPresioTotal(Long presioTotal) {
        this.presioTotal = presioTotal;
    }

    public Reservas getReservas() {
        return reservas;
    }

    public void setReservas(Reservas reservas) {
        this.reservas = reservas;
    }

    public ProductoFinal getProductoFinal() {
        return productoFinal;
    }

    public void setProductoFinal(ProductoFinal productoFinal) {
        this.productoFinal = productoFinal;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (productofinalReservasPK != null ? productofinalReservasPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductofinalReservas)) {
            return false;
        }
        ProductofinalReservas other = (ProductofinalReservas) object;
        if ((this.productofinalReservasPK == null && other.productofinalReservasPK != null) || (this.productofinalReservasPK != null && !this.productofinalReservasPK.equals(other.productofinalReservasPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.ProductofinalReservas[ productofinalReservasPK=" + productofinalReservasPK + " ]";
    }
    
}
