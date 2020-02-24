/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author SAM
 */
@Embeddable
public class ProductofinalReservasPK implements Serializable {

    @Basic(optional = false)
    @Column(name = "reservas_id_reserva")
    private int reservasIdReserva;
    @Basic(optional = false)
    @Column(name = "producto_final_id_productof")
    private int productoFinalIdProductof;

    public ProductofinalReservasPK() {
    }

    public ProductofinalReservasPK(int reservasIdReserva, int productoFinalIdProductof) {
        this.reservasIdReserva = reservasIdReserva;
        this.productoFinalIdProductof = productoFinalIdProductof;
    }

    public int getReservasIdReserva() {
        return reservasIdReserva;
    }

    public void setReservasIdReserva(int reservasIdReserva) {
        this.reservasIdReserva = reservasIdReserva;
    }

    public int getProductoFinalIdProductof() {
        return productoFinalIdProductof;
    }

    public void setProductoFinalIdProductof(int productoFinalIdProductof) {
        this.productoFinalIdProductof = productoFinalIdProductof;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) reservasIdReserva;
        hash += (int) productoFinalIdProductof;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ProductofinalReservasPK)) {
            return false;
        }
        ProductofinalReservasPK other = (ProductofinalReservasPK) object;
        if (this.reservasIdReserva != other.reservasIdReserva) {
            return false;
        }
        if (this.productoFinalIdProductof != other.productoFinalIdProductof) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.ProductofinalReservasPK[ reservasIdReserva=" + reservasIdReserva + ", productoFinalIdProductof=" + productoFinalIdProductof + " ]";
    }
    
}
