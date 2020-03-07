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
import javax.persistence.JoinTable;
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
@Table(name = "reservas")
@XmlRootElement
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
    @Basic(optional = false)
    @Column(name = "precio_total")
    private long precioTotal;
    @Basic(optional = false)
    @Column(name = "estado")
    private short estado;
    @Basic(optional = false)
    @Column(name = "observaciones")
    private String observaciones;
    @JoinTable(name = "productofinal_reservas", joinColumns = {
        @JoinColumn(name = "id_reserva_reserva", referencedColumnName = "id_reserva")}, inverseJoinColumns = {
        @JoinColumn(name = "id_productofina_final", referencedColumnName = "id_productof")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<ProductoFinal> productoFinal;
    @JoinColumn(name = "producto", referencedColumnName = "id_productof")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private ProductoFinal producto;
    @JoinColumn(name = "cliente", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios cliente;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "reserva", fetch = FetchType.LAZY)
    private List<RegistroVentas> registroVentas;

    public Reservas() {
    }

    public Reservas(Integer idReserva) {
        this.idReserva = idReserva;
    }

    public Reservas(Integer idReserva, int cantidad, long precioTotal, short estado, String observaciones) {
        this.idReserva = idReserva;
        this.cantidad = cantidad;
        this.precioTotal = precioTotal;
        this.estado = estado;
        this.observaciones = observaciones;
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

    public long getPrecioTotal() {
        return precioTotal;
    }

    public void setPrecioTotal(long precioTotal) {
        this.precioTotal = precioTotal;
    }

    public short getEstado() {
        return estado;
    }

    public void setEstado(short estado) {
        this.estado = estado;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
    }

    @XmlTransient
    public List<ProductoFinal> getProductoFinalList() {
        return productoFinal;
    }

    public void setProductoFinalList(List<ProductoFinal> productoFinalList) {
        this.productoFinal = productoFinalList;
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

    @XmlTransient
    public List<RegistroVentas> getRegistroVentasList() {
        return registroVentas;
    }

    public void setRegistroVentasList(List<RegistroVentas> registroVentasList) {
        this.registroVentas = registroVentasList;
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
