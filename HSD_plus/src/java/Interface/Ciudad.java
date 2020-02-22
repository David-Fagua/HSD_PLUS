
package Interface;

import java.util.List;


public interface Ciudad {
    public List listar();
    public Ciudad list(int id_ciudad);
    public boolean edit(Ciudad ciu);
    public boolean eliminar(int id_ciudad);
}
