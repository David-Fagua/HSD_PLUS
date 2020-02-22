
package Model;


public class Usuarios {
    int id_user;
    String nombre;
    String apellidos;
    String username;
    String clave1;
    String clave2;
    int rol;
    int tipo_documento;
    String numero_documento;
    String email;
    String telefono;
    String foto;
    int ciudad;
    String status;

    public Usuarios() {
    }

    public Usuarios(int id_user, String nombre, String apellidos, String username, String clave1, String clave2, int rol, int tipo_documento, String numero_documento, String email, String telefono, String foto, int ciudad, String status) {
        this.id_user = id_user;
        this.nombre = nombre;
        this.apellidos = apellidos;
        this.username = username;
        this.clave1 = clave1;
        this.clave2 = clave2;
        this.rol = rol;
        this.tipo_documento = tipo_documento;
        this.numero_documento = numero_documento;
        this.email = email;
        this.telefono = telefono;
        this.foto = foto;
        this.ciudad = ciudad;
        this.status = status;
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

    public String getApellidos() {
        return apellidos;
    }

    public void setApellidos(String apellidos) {
        this.apellidos = apellidos;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getClave1() {
        return clave1;
    }

    public void setClave1(String clave1) {
        this.clave1 = clave1;
    }

    public String getClave2() {
        return clave2;
    }

    public void setClave2(String clave2) {
        this.clave2 = clave2;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getFoto() {
        return foto;
    }

    public void setFoto(String foto) {
        this.foto = foto;
    }

    public int getCiudad() {
        return ciudad;
    }

    public void setCiudad(int ciudad) {
        this.ciudad = ciudad;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

   
    
    
}
