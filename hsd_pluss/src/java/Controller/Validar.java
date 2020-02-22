
package Controller;

import Model.Usuarios;
import Model.UsuariosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Validar extends HttpServlet {

    UsuariosDAO udao=new UsuariosDAO();
    Usuarios us=new Usuarios();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String accion=request.getParameter("accion");
        if (accion.equalsIgnoreCase("Ingresar")) {
            String email=request.getParameter("txtemail");
            String clave1=request.getParameter("txtclave1");
            us=udao.validar(email, clave1);
            
            if (us.getEmail()!=null) {
                request.setAttribute("nombre", us.getNombre());
                request.setAttribute("apellidos", us.getApellidos());
                request.getRequestDispatcher("ControladorUsuarios?accion=esp/Admin/Inicio").forward(request, response);
            }else request.setAttribute("mensaje", "El correo Electronico o la Contraseña esta Incorrecta");{  
                request.getRequestDispatcher("esp/InicioSesion_1.htm").forward(request, response);
                
            }
        }
        else{
            request.getRequestDispatcher("index.htm").forward(request, response);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    

}
