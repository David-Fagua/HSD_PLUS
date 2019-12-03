
package Interfaces;

import Modelo.Tipo_documento;
import java.util.List;

public interface TIPO_DOCUMENTO {
    public List listar();
   public Tipo_documento list (int id_tdocumento);
   public boolean add (Tipo_documento  tid);
   public boolean edit (Tipo_documento  tid);
   public boolean eliminar (int id_tdocumento);
}
