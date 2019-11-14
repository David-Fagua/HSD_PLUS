/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.Tipo_documentoDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Tipo_documento;

/**
 *
 * @author SAM
 */
public class Tipo_documentoControl extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Tipo_documentoControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Tipo_documentoControl at " + request.getContextPath() + "</h1>");
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
        processRequest(request, response);
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
        String nombre = request.getParameter("nombre");
        String accion=request.getParameter("accion").toLowerCase();
        

        Tipo_documento td = new Tipo_documento();
        td.setNombre(nombre);

        if(accion.equals("registrar")){
                if (Tipo_documentoDao.registrar(td)) {
                    request.setAttribute("mensaje", "La documento Fue Registrada con Exito");
                } else {
                    request.setAttribute("mensaje", "La documento Nooooooooo Fue Registrada con Exito");
                }
            }else if(accion.equals("actualizar")){
                if(Tipo_documentoDao.actualizar(td)){
                    request.setAttribute("mensaje", "La documento Fue Actualizada con Exito");
                }
                    request.setAttribute("mensaje", "La documento Nooooooooo Fue Actualizada con Exito");
            }else if(accion.equals("eliminar")){
                if(Tipo_documentoDao.eliminar(td)){
                    request.setAttribute("mensaje", "La documento Fue Elimanada con Exito");              
                }else{
                    request.setAttribute("mensaje", "La documento Nooooooooo Fue Eliminada con Exito");
                }
            }else{
                request.setAttribute("mensaje", "Accion desconocida");    
        }
        request.getRequestDispatcher("registroTipo_documento.jsp").forward(request, response);
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
