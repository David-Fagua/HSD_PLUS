
package Interfaces;

import Modelo.Ciudad;
import java.util.List;


public interface CIUDAD {
   public List listar();
   public Ciudad list (int id_ciudad);
   public boolean add (Ciudad ciu);
   public boolean edit (Ciudad ciu);
   public boolean eliminar (int id_ciudad);
}
