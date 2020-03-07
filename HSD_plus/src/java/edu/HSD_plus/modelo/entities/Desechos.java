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
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "desechos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Desechos.findAll", query = "SELECT d FROM Desechos d")
    , @NamedQuery(name = "Desechos.findByIdDesecho", query = "SELECT d FROM Desechos d WHERE d.idDesecho = :idDesecho")
    , @NamedQuery(name = "Desechos.findByFecha", query = "SELECT d FROM Desechos d WHERE d.fecha = :fecha")
    , @NamedQuery(name = "Desechos.findByCantidad", query = "SELECT d FROM Desechos d WHERE d.cantidad = :cantidad")
    , @NamedQuery(name = "Desechos.findByObservaciones", query = "SELECT d FROM Desechos d WHERE d.observaciones = :observaciones")})
public class Desechos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_desecho")
    private Integer idDesecho;
    @Column(name = "fecha")
    @Temporal(TemporalType.DATE)
    private Date fecha;
    @Basic(optional = false)
    @Column(name = "cantidad")
    private int cantidad;
    @Column(name = "observaciones")
    private String observaciones;
    @JoinColumn(name = "articulo", referencedColumnName = "id_articulo")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private InventarioGeneral articulo;
    @JoinColumn(name = "responsable", referencedColumnName = "id_usuario")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Usuarios responsable;

    public Desechos() {
    }

    public Desechos(Integer idDesecho) {
        this.idDesecho = idDesecho;
    }

    public Desechos(Integer idDesecho, int cantidad) {
        this.idDesecho = idDesecho;
        this.cantidad = cantidad;
    }

    public Integer getIdDesecho() {
        return idDesecho;
    }

    public void setIdDesecho(Integer idDesecho) {
        this.idDesecho = idDesecho;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public String getObservaciones() {
        return observaciones;
    }

    public void setObservaciones(String observaciones) {
        this.observaciones = observaciones;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idDesecho != null ? idDesecho.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Desechos)) {
            return false;
        }
        Desechos other = (Desechos) object;
        if ((this.idDesecho == null && other.idDesecho != null) || (this.idDesecho != null && !this.idDesecho.equals(other.idDesecho))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.Desechos[ idDesecho=" + idDesecho + " ]";
    }
    
}
