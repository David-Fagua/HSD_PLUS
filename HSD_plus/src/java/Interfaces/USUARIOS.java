
package Interfaces;

import Modelo.Usuarios;
import java.util.List;


public interface USUARIOS {
    public List listar();
   public Usuarios list (int id_user);
   public boolean add (Usuarios  usu);
   public boolean edit (Usuarios  usu);
   public boolean eliminar (int id_user);
}
