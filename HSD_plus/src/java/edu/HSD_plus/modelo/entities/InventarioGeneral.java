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
@Table(name = "inventario_general")
@NamedQueries({
    @NamedQuery(name = "InventarioGeneral.findAll", query = "SELECT i FROM InventarioGeneral i")
    , @NamedQuery(name = "InventarioGeneral.findByIdArticulo", query = "SELECT i FROM InventarioGeneral i WHERE i.idArticulo = :idArticulo")
    , @NamedQuery(name = "InventarioGeneral.findByNombre", query = "SELECT i FROM InventarioGeneral i WHERE i.nombre = :nombre")
    , @NamedQuery(name = "InventarioGeneral.findByFechaEntrada", query = "SELECT i FROM InventarioGeneral i WHERE i.fechaEntrada = :fechaEntrada")
    , @NamedQuery(name = "InventarioGeneral.findByPreciodeCompra", query = "SELECT i FROM InventarioGeneral i WHERE i.preciodeCompra = :preciodeCompra")
    , @NamedQuery(name = "InventarioGeneral.findByDisponibilidad", query = "SELECT i FROM InventarioGeneral i WHERE i.disponibilidad = :disponibilidad")
    , @NamedQuery(name = "InventarioGeneral.findByPesoLibra", query = "SELECT i FROM InventarioGeneral i WHERE i.pesoLibra = :pesoLibra")
    , @NamedQuery(name = "InventarioGeneral.findByCantidadUnitaria", query = "SELECT i FROM InventarioGeneral i WHERE i.cantidadUnitaria = :cantidadUnitaria")
    , @NamedQuery(name = "InventarioGeneral.findByColor", query = "SELECT i FROM InventarioGeneral i WHERE i.color = :color")
    , @NamedQuery(name = "InventarioGeneral.findByEstado", query = "SELECT i FROM InventarioGeneral i WHERE i.estado = :estado")})
public class InventarioGeneral implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_articulo")
    private Integer idArticulo;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @Column(name = "fecha_entrada")
    private String fechaEntrada;
    @Basic(optional = false)
    @Column(name = "preciode_compra")
    private long preciodeCompra;
    @Column(name = "disponibilidad")
    private Short disponibilidad;
    @Column(name = "peso_libra")
    private Long pesoLibra;
    @Basic(optional = false)
    @Column(name = "cantidad_unitaria")
    private int cantidadUnitaria;
    @Basic(optional = false)
    @Column(name = "color")
    private String color;
    @Column(name = "estado")
    private Short estado;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "articulo", fetch = FetchType.LAZY)
    private List<Desechos> desechos;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "articulo", fetch = FetchType.LAZY)
    private List<ProductoFinal> productoFinal;
    @JoinColumn(name = "proveedor", referencedColumnName = "id_proveedor")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Proveedores proveedor;
    @JoinColumn(name = "responsable", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios responsable;
    @OneToMany(mappedBy = "articuloInicial2", fetch = FetchType.LAZY)
    private List<ProductoProceso> productoProceso;
    @OneToMany(mappedBy = "articuloInicial", fetch = FetchType.LAZY)
    private List<ProductoProceso> productoProceso1;

    public InventarioGeneral() {
    }

    public InventarioGeneral(Integer idArticulo) {
        this.idArticulo = idArticulo;
    }

    public InventarioGeneral(Integer idArticulo, String nombre, String fechaEntrada, long preciodeCompra, int cantidadUnitaria, String color) {
        this.idArticulo = idArticulo;
        this.nombre = nombre;
        this.fechaEntrada = fechaEntrada;
        this.preciodeCompra = preciodeCompra;
        this.cantidadUnitaria = cantidadUnitaria;
        this.color = color;
    }

    public Integer getIdArticulo() {
        return idArticulo;
    }

    public void setIdArticulo(Integer idArticulo) {
        this.idArticulo = idArticulo;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechaEntrada() {
        return fechaEntrada;
    }

    public void setFechaEntrada(String fechaEntrada) {
        this.fechaEntrada = fechaEntrada;
    }

    public long getPreciodeCompra() {
        return preciodeCompra;
    }

    public void setPreciodeCompra(long preciodeCompra) {
        this.preciodeCompra = preciodeCompra;
    }

    public Short getDisponibilidad() {
        return disponibilidad;
    }

    public void setDisponibilidad(Short disponibilidad) {
        this.disponibilidad = disponibilidad;
    }

    public Long getPesoLibra() {
        return pesoLibra;
    }

    public void setPesoLibra(Long pesoLibra) {
        this.pesoLibra = pesoLibra;
    }

    public int getCantidadUnitaria() {
        return cantidadUnitaria;
    }

    public void setCantidadUnitaria(int cantidadUnitaria) {
        this.cantidadUnitaria = cantidadUnitaria;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public Short getEstado() {
        return estado;
    }

    public void setEstado(Short estado) {
        this.estado = estado;
    }

    public List<Desechos> getDesechosList() {
        return desechos;
    }

    public void setDesechosList(List<Desechos> desechosList) {
        this.desechos = desechosList;
    }

    public List<ProductoFinal> getProductoFinalList() {
        return productoFinal;
    }

    public void setProductoFinalList(List<ProductoFinal> productoFinalList) {
        this.productoFinal = productoFinalList;
    }

    public Proveedores getProveedor() {
        return proveedor;
    }

    public void setProveedor(Proveedores proveedor) {
        this.proveedor = proveedor;
    }

    public Usuarios getResponsable() {
        return responsable;
    }

    public void setResponsable(Usuarios responsable) {
        this.responsable = responsable;
    }

    public List<ProductoProceso> getProductoProcesoList() {
        return productoProceso;
    }

    public void setProductoProcesoList(List<ProductoProceso> productoProcesoList) {
        this.productoProceso = productoProcesoList;
    }

    public List<ProductoProceso> getProductoProcesoList1() {
        return productoProceso1;
    }

    public void setProductoProcesoList1(List<ProductoProceso> productoProcesoList1) {
        this.productoProceso1 = productoProcesoList1;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idArticulo != null ? idArticulo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof InventarioGeneral)) {
            return false;
        }
        InventarioGeneral other = (InventarioGeneral) object;
        if ((this.idArticulo == null && other.idArticulo != null) || (this.idArticulo != null && !this.idArticulo.equals(other.idArticulo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.InventarioGeneral[ idArticulo=" + idArticulo + " ]";
    }
    
}
