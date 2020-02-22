
package Modelo;


public class Usuarios {
    int id_user;
    String nombre;
    String apellido;
    String pass;
    String correo;
    int rol;
    int tipo_documento;
    String numero_documento;
    String telefono;
    int ciudad;

    public Usuarios() {
    }

    public Usuarios(int id_user, String nombre, String apellido, String pass, String correo, int rol, int tipo_documento, String numero_documento, String telefono, int ciudad) {
        this.id_user = id_user;
        this.nombre = nombre;
        this.apellido = apellido;
        this.pass = pass;
        this.correo = correo;
        this.rol = rol;
        this.tipo_documento = tipo_documento;
        this.numero_documento = numero_documento;
        this.telefono = telefono;
        this.ciudad = ciudad;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public int getRol() {
        return rol;
    }

    public void setRol(int rol) {
        this.rol = rol;
    }

    public int getTipo_documento() {
        return tipo_documento;
    }

    public void setTipo_documento(int tipo_documento) {
        this.tipo_documento = tipo_documento;
    }

    public String getNumero_documento() {
        return numero_documento;
    }

    public void setNumero_documento(String numero_documento) {
        this.numero_documento = numero_documento;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }
    
}
