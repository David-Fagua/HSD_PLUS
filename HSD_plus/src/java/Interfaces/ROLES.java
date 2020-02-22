
package Interfaces;

import Modelo.Roles;
import java.util.List;


public interface ROLES {
   public List listar();
   public Roles list (int id_rol);
   public boolean add (Roles rrl);
   public boolean edit (Roles rrl);
   public boolean eliminar (int id_rol);
}
