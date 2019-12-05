
package Controlador;

import Modelo.Ciudad;
import ModeloDAO.CiudadDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author SAM
 */
public class ControladorCiudad extends HttpServlet {
    String listar="vistas/ciudad/listar.jsp";
    String add="vistas/ciudad/add.jsp";
    String edit="vistas/ciudad/edit.jsp";
    Ciudad c=new Ciudad();
    CiudadDAO dao=new CiudadDAO();
    int id_ciudad;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorCiudad</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorCiudad at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
            c.setNombre(nombre);
            dao.add(c);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idciu", request.getParameter("id_ciudad"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id_ciudad=Integer.parseInt(request.getParameter("txtid_ciudad"));
            String nombre=request.getParameter("txtnombre");
            c.setId_ciudad(id_ciudad);
            c.setNombre(nombre);
            dao.edit(c);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id_ciudad=Integer.parseInt(request.getParameter("id_ciudad"));
            c.setId_ciudad(id_ciudad);
            dao.eliminar(id_ciudad);
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
