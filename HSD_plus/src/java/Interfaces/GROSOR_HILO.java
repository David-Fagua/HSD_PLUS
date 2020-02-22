
package Interfaces;

import Modelo.Grosor_hilo;
import java.util.List;


public interface GROSOR_HILO {
   public List listar();
   public Grosor_hilo list (int id_grosor);
   public boolean add (Grosor_hilo  gro);
   public boolean edit (Grosor_hilo  gro);
   public boolean eliminar (int id_grosor);
}
