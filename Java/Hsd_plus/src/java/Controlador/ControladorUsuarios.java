
package Controlador;

import Modelo.Usuarios;
import ModeloDAO.UsuariosDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorUsuarios extends HttpServlet {
    String listar="vistas/usuarios/listar.jsp";
    String add="vistas/usuarios/add.jsp";
    String edit="vistas/usuarios/edit.jsp";
    Usuarios us=new Usuarios();
    UsuariosDAO dao=new UsuariosDAO();
    int id_user;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorUsuarios</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorUsuarios at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso="";
        String action=request.getParameter("accion");
        if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("add")){
            acceso=add;
        }
        else if(action.equalsIgnoreCase("Agregar")){
            
            String nombre=request.getParameter("txtnombre");
            String apellido=request.getParameter("txtapellido");
            String pass=request.getParameter("txtpass");
            String correo=request.getParameter("txtcorreo");
            int rol = Integer.parseInt(request.getParameter("txtrol"));
            int tipo_documento = Integer.parseInt(request.getParameter("txttipo_documento"));
            String numero_documento=request.getParameter("txtnumero_documento");
            String telefono=request.getParameter("txttelefono");
            int ciudad= Integer.parseInt(request.getParameter("txtciudad"));
            
            us.setNombre(nombre);
            us.setApellido(apellido);
            us.setPass(pass);
            us.setCorreo(correo);
            us.setRol(rol);
            us.setTipo_documento(tipo_documento);
            us.setNumero_documento(numero_documento);
            us.setTelefono(telefono);
            us.setCiudad(ciudad);
            dao.add(us);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idusu", request.getParameter("id_user"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id_user=Integer.parseInt(request.getParameter("txtid_user"));
            String nombre=request.getParameter("txtnombre");
            String apellido=request.getParameter("txtapellido");
            String pass=request.getParameter("txtpass");
            String correo=request.getParameter("txtcorreo");
            int rol = Integer.parseInt(request.getParameter("txtrol"));
            int tipo_documento = Integer.parseInt(request.getParameter("txttipo_documento"));
            String numero_documento=request.getParameter("txtnumero_documento");
            String telefono=request.getParameter("txttelefono");
            int ciudad= Integer.parseInt(request.getParameter("txtciudad"));
            
            us.setId_user(id_user);
            us.setNombre(nombre);
            us.setApellido(apellido);
            us.setPass(pass);
            us.setCorreo(correo);
            us.setRol(rol);
            us.setTipo_documento(tipo_documento);
            us.setNumero_documento(numero_documento);
            us.setTelefono(telefono);
            us.setCiudad(ciudad);
            dao.edit(us);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id_user=Integer.parseInt(request.getParameter("id_user"));
            us.setId_user(id_user);
            dao.eliminar(id_user);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
