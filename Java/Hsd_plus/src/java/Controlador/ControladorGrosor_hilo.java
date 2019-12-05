
package Controlador;

import Modelo.Grosor_hilo;
import ModeloDAO.Grosor_hiloDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorGrosor_hilo extends HttpServlet {
    String listar="vistas/ghilo/listar.jsp";
    String add="vistas/ghilo/add.jsp";
    String edit="vistas/ghilo/edit.jsp";
    Grosor_hilo gr=new Grosor_hilo();
    Grosor_hiloDAO dao=new Grosor_hiloDAO();
    int id_grosor;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorGrosor_hilo</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorGrosor_hilo at " + request.getContextPath() + "</h1>");
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
            int medida = Integer.parseInt(request.getParameter("txtmedida"));
            String fecha_aprobacion=request.getParameter("txtfecha_aprobacion");
            gr.setMedida(medida);
            gr.setFecha_aprobacion(fecha_aprobacion);
            dao.add(gr);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idgro", request.getParameter("id_grosor"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id_grosor=Integer.parseInt(request.getParameter("txtid_grosor"));
            int medida = Integer.parseInt(request.getParameter("txtmedida"));
            String fecha_aprobacion=request.getParameter("txtfecha_aprobacion");
            gr.setId_grosor(id_grosor);
            gr.setMedida(medida);
            gr.setFecha_aprobacion(fecha_aprobacion);
            dao.edit(gr);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id_grosor=Integer.parseInt(request.getParameter("id_grosor"));
            gr.setMedida(id_grosor);
            dao.eliminar(id_grosor);
            acceso=listar;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
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
