/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.entities;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author SAM
 */
@Entity
@Table(name = "tipodocumentos")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Tipodocumentos.findAll", query = "SELECT t FROM Tipodocumentos t")
    , @NamedQuery(name = "Tipodocumentos.findByIdTdocumento", query = "SELECT t FROM Tipodocumentos t WHERE t.idTdocumento = :idTdocumento")
    , @NamedQuery(name = "Tipodocumentos.findByAbrebiatura", query = "SELECT t FROM Tipodocumentos t WHERE t.abrebiatura = :abrebiatura")
    , @NamedQuery(name = "Tipodocumentos.findByNombre", query = "SELECT t FROM Tipodocumentos t WHERE t.nombre = :nombre")})
public class Tipodocumentos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_tdocumento")
    private Integer idTdocumento;
    @Basic(optional = false)
    @Column(name = "abrebiatura")
    private String abrebiatura;
    @Basic(optional = false)
    @Column(name = "nombre")
    private String nombre;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "tipoDocumento", fetch = FetchType.LAZY)
    private List<Usuarios> usuarios;

    public Tipodocumentos() {
    }

    public Tipodocumentos(Integer idTdocumento) {
        this.idTdocumento = idTdocumento;
    }

    public Tipodocumentos(Integer idTdocumento, String abrebiatura, String nombre) {
        this.idTdocumento = idTdocumento;
        this.abrebiatura = abrebiatura;
        this.nombre = nombre;
    }

    public Integer getIdTdocumento() {
        return idTdocumento;
    }

    public void setIdTdocumento(Integer idTdocumento) {
        this.idTdocumento = idTdocumento;
    }

    public String getAbrebiatura() {
        return abrebiatura;
    }

    public void setAbrebiatura(String abrebiatura) {
        this.abrebiatura = abrebiatura;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @XmlTransient
    public List<Usuarios> getUsuariosList() {
        return usuarios;
    }

    public void setUsuariosList(List<Usuarios> usuariosList) {
        this.usuarios = usuariosList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idTdocumento != null ? idTdocumento.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Tipodocumentos)) {
            return false;
        }
        Tipodocumentos other = (Tipodocumentos) object;
        if ((this.idTdocumento == null && other.idTdocumento != null) || (this.idTdocumento != null && !this.idTdocumento.equals(other.idTdocumento))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.Tipodocumentos[ idTdocumento=" + idTdocumento + " ]";
    }
    
}
