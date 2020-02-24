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
@Table(name = "reservas")
@NamedQueries({
    @NamedQuery(name = "Reservas.findAll", query = "SELECT r FROM Reservas r")
    , @NamedQuery(name = "Reservas.findByIdReserva", query = "SELECT r FROM Reservas r WHERE r.idReserva = :idReserva")
    , @NamedQuery(name = "Reservas.findByFechaReserva", query = "SELECT r FROM Reservas r WHERE r.fechaReserva = :fechaReserva")
    , @NamedQuery(name = "Reservas.findByCantidad", query = "SELECT r FROM Reservas r WHERE r.cantidad = :cantidad")
    , @NamedQuery(name = "Reservas.findByPrecioTotal", query = "SELECT r FROM Reservas r WHERE r.precioTotal = :precioTotal")
    , @NamedQuery(name = "Reservas.findByEstado", query = "SELECT r FROM Reservas r WHERE r.estado = :estado")
    , @NamedQuery(name = "Reservas.findByObservaciones", query = "SELECT r FROM Reservas r WHERE r.observaciones = :observaciones")})
public class Reservas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_reserva")
    private Integer idReserva;
    @Column(name = "fecha_reserva")
    private String fechaReserva;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;
    @Column(name = "precio_total")
    private Long precioTotal;
    @Column(name = "estado")
    private String estado;
    @Column(name = "observaciones")
    private String observaciones;
    @JoinColumn(name = "producto", referencedColumnName = "id_productof")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ProductoFinal producto;
    @JoinColumn(name = "cliente", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios cliente;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "reserva", fetch = FetchType.LAZY)
    private List<RegistroVentas> registroVentas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "reservas", fetch = FetchType.LAZY)
    private List<ProductofinalReservas> productofinalReservas;

    public Reservas() {
    }

    public Reservas(Integer idReserva) {
        this.idReserva = idReserva;
    }

    public Reservas(Integer idReserva, int cantidad) {
        this.idReserva = idReserva;
        this.cantidad = cantidad;
    }

    public Integer getIdReserva() {
        return idReserva;
    }

    public void setIdReserva(Integer idReserva) {
        this.idReserva = idReserva;
    }

    public String getFechaReserva() {
        return fechaReserva;
    }

    public void setFechaReserva(String fechaReserva) {
        this.fechaReserva = fechaReserva;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public Long getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(Long precioTotal) {
        this.precioTotal = precioTotal;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    public ProductoFinal getProducto() {
        return producto;
    }

    public void setProducto(ProductoFinal producto) {
        this.producto = producto;
    }

    public Usuarios getCliente() {
        return cliente;
    }

    public void setCliente(Usuarios cliente) {
        this.cliente = cliente;
    }

    public List<RegistroVentas> getRegistroVentas() {
        return registroVentas;
    }

    public void setRegistroVentas(List<RegistroVentas> registroVentas) {
        this.registroVentas = registroVentas;
    }

    public List<ProductofinalReservas> getProductofinalReservas() {
        return productofinalReservas;
    }

    public void setProductofinalReservas(List<ProductofinalReservas> productofinalReservas) {
        this.productofinalReservas = productofinalReservas;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idReserva != null ? idReserva.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Reservas)) {
            return false;
        }
        Reservas other = (Reservas) object;
        if ((this.idReserva == null && other.idReserva != null) || (this.idReserva != null && !this.idReserva.equals(other.idReserva))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.Reservas[ idReserva=" + idReserva + " ]";
    }
    
}
