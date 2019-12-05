
package Interfaces;

import Modelo.Proveedor;
import java.util.List;


public interface PROVEEDOR {
   public List listar();
   public Proveedor list (int id_empresa);
   public boolean add (Proveedor  pro);
   public boolean edit (Proveedor  pro);
   public boolean eliminar (int id_empresa);
}
