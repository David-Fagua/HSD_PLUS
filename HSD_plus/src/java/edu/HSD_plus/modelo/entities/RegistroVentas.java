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
@Table(name = "registro_ventas")
@NamedQueries({
    @NamedQuery(name = "RegistroVentas.findAll", query = "SELECT r FROM RegistroVentas r")
    , @NamedQuery(name = "RegistroVentas.findByIdVenta", query = "SELECT r FROM RegistroVentas r WHERE r.idVenta = :idVenta")
    , @NamedQuery(name = "RegistroVentas.findByFechaVenta", query = "SELECT r FROM RegistroVentas r WHERE r.fechaVenta = :fechaVenta")
    , @NamedQuery(name = "RegistroVentas.findByObservaciones", query = "SELECT r FROM RegistroVentas r WHERE r.observaciones = :observaciones")
    , @NamedQuery(name = "RegistroVentas.findByCantidad", query = "SELECT r FROM RegistroVentas r WHERE r.cantidad = :cantidad")
    , @NamedQuery(name = "RegistroVentas.findByPresioTotal", query = "SELECT r FROM RegistroVentas r WHERE r.presioTotal = :presioTotal")})
public class RegistroVentas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_venta")
    private Integer idVenta;
    @Column(name = "fecha_venta")
    private String fechaVenta;
    @Column(name = "observaciones")
    private String observaciones;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;
    @Column(name = "presio_total")
    private Long presioTotal;
    @JoinColumn(name = "responsable", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios responsable;
    @JoinColumn(name = "reserva", referencedColumnName = "id_reserva")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Reservas reserva;

    public RegistroVentas() {
    }

    public RegistroVentas(Integer idVenta) {
        this.idVenta = idVenta;
    }

    public RegistroVentas(Integer idVenta, int cantidad) {
        this.idVenta = idVenta;
        this.cantidad = cantidad;
    }

    public Integer getIdVenta() {
        return idVenta;
    }

    public void setIdVenta(Integer idVenta) {
        this.idVenta = idVenta;
    }

    public String getFechaVenta() {
        return fechaVenta;
    }

    public void setFechaVenta(String fechaVenta) {
        this.fechaVenta = fechaVenta;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
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

    public Usuarios getResponsable() {
        return responsable;
    }

    public void setResponsable(Usuarios responsable) {
        this.responsable = responsable;
    }

    public Reservas getReserva() {
        return reserva;
    }

    public void setReserva(Reservas reserva) {
        this.reserva = reserva;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idVenta != null ? idVenta.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RegistroVentas)) {
            return false;
        }
        RegistroVentas other = (RegistroVentas) object;
        if ((this.idVenta == null && other.idVenta != null) || (this.idVenta != null && !this.idVenta.equals(other.idVenta))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.RegistroVentas[ idVenta=" + idVenta + " ]";
    }
    
}
