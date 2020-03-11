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
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
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
@Table(name = "usuarios")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Usuarios.findAll", query = "SELECT u FROM Usuarios u")
    , @NamedQuery(name = "Usuarios.findByIdUsuario", query = "SELECT u FROM Usuarios u WHERE u.idUsuario = :idUsuario")
    , @NamedQuery(name = "Usuarios.findByImagen", query = "SELECT u FROM Usuarios u WHERE u.imagen = :imagen")
    , @NamedQuery(name = "Usuarios.findByNumerodocumento", query = "SELECT u FROM Usuarios u WHERE u.numerodocumento = :numerodocumento")
    , @NamedQuery(name = "Usuarios.findByNombres", query = "SELECT u FROM Usuarios u WHERE u.nombres = :nombres")
    , @NamedQuery(name = "Usuarios.findByPrimerApellido", query = "SELECT u FROM Usuarios u WHERE u.primerApellido = :primerApellido")
    , @NamedQuery(name = "Usuarios.findBySegundoApellido", query = "SELECT u FROM Usuarios u WHERE u.segundoApellido = :segundoApellido")
    , @NamedQuery(name = "Usuarios.findByCorreo", query = "SELECT u FROM Usuarios u WHERE u.correo = :correo")
    , @NamedQuery(name = "Usuarios.findByClave", query = "SELECT u FROM Usuarios u WHERE u.clave = :clave")
    , @NamedQuery(name = "Usuarios.findByTelefono", query = "SELECT u FROM Usuarios u WHERE u.telefono = :telefono")
    , @NamedQuery(name = "Usuarios.findByEstado", query = "SELECT u FROM Usuarios u WHERE u.estado = :estado")})
public class Usuarios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id_usuario")
    private Integer idUsuario;
    @Column(name = "imagen")
    private String imagen;
    @Basic(optional = false)
    @Column(name = "numerodocumento")
    private String numerodocumento;
    @Basic(optional = false)
    @Column(name = "nombres")
    private String nombres;
    @Basic(optional = false)
    @Column(name = "primer_apellido")
    private String primerApellido;
    @Basic(optional = false)
    @Column(name = "segundo_apellido")
    private String segundoApellido;
    @Basic(optional = false)
    @Column(name = "correo")
    private String correo;
    @Basic(optional = false)
    @Column(name = "clave")
    private String clave;
    @Column(name = "telefono")
    private String telefono;
    @Column(name = "estado")
    private Short estado;
    @JoinTable(name = "usuarios_roles", joinColumns = {
        @JoinColumn(name = "usuarios_id_usuario", referencedColumnName = "id_usuario")}, inverseJoinColumns = {
        @JoinColumn(name = "roles_id_rol", referencedColumnName = "id_rol")})
    @ManyToMany(fetch = FetchType.LAZY)
    private List<Roles> roles;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "cliente", fetch = FetchType.LAZY)
    private List<Reservas> reservas;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "responsable", fetch = FetchType.LAZY)
    private List<Desechos> desechos;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "responsable", fetch = FetchType.LAZY)
    private List<RegistroVentas> registroVentas;
    @JoinColumn(name = "ciudad", referencedColumnName = "id_ciudad")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Ciudades ciudad;
    @JoinColumn(name = "tipo_documento", referencedColumnName = "id_tdocumento")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Tipodocumentos tipoDocumento;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "responsable", fetch = FetchType.LAZY)
    private List<ProductoProceso> productoProceso;

    public Usuarios() {
    }

    public Usuarios(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public Usuarios(Integer idUsuario, String numerodocumento, String nombres, String primerApellido, String segundoApellido, String correo, String clave) {
        this.idUsuario = idUsuario;
        this.numerodocumento = numerodocumento;
        this.nombres = nombres;
        this.primerApellido = primerApellido;
        this.segundoApellido = segundoApellido;
        this.correo = correo;
        this.clave = clave;
    }

    public Integer getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(Integer idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getNumerodocumento() {
        return numerodocumento;
    }

    public void setNumerodocumento(String numerodocumento) {
        this.numerodocumento = numerodocumento;
    }

    public String getNombres() {
        return nombres;
    }

    public void setNombres(String nombres) {
        this.nombres = nombres;
    }

    public String getPrimerApellido() {
        return primerApellido;
    }

    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }

    public String getSegundoApellido() {
        return segundoApellido;
    }

    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public Short getEstado() {
        return estado;
    }

    public void setEstado(Short estado) {
        this.estado = estado;
    }

    @XmlTransient
    public List<Roles> getRoles() {
        return roles;
    }

    public void setRoles(List<Roles> rolesList) {
        this.roles = rolesList;
    }

    @XmlTransient
    public List<Reservas> getReservasList() {
        return reservas;
    }

    public void setReservasList(List<Reservas> reservasList) {
        this.reservas = reservasList;
    }

    @XmlTransient
    public List<Desechos> getDesechosList() {
        return desechos;
    }

    public void setDesechosList(List<Desechos> desechosList) {
        this.desechos = desechosList;
    }

    @XmlTransient
    public List<RegistroVentas> getRegistroVentasList() {
        return registroVentas;
    }

    public void setRegistroVentasList(List<RegistroVentas> registroVentasList) {
        this.registroVentas = registroVentasList;
    }

    public Ciudades getCiudad() {
        return ciudad;
    }

    public void setCiudad(Ciudades ciudad) {
        this.ciudad = ciudad;
    }

    public Tipodocumentos getTipoDocumento() {
        return tipoDocumento;
    }

    public void setTipoDocumento(Tipodocumentos tipoDocumento) {
        this.tipoDocumento = tipoDocumento;
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
        hash += (idUsuario != null ? idUsuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Usuarios)) {
            return false;
        }
        Usuarios other = (Usuarios) object;
        if ((this.idUsuario == null && other.idUsuario != null) || (this.idUsuario != null && !this.idUsuario.equals(other.idUsuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "edu.HSD_plus.modelo.entities.Usuarios[ idUsuario=" + idUsuario + " ]";
    }

}
