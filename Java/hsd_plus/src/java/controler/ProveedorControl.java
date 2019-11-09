/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controler;

import dao.ProveedorDao;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Proveedor;

/**
 *
 * @author SAM
 */
public class ProveedorControl extends HttpServlet {

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
            out.println("<title>Servlet ProveedorControl</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ProveedorControl at " + request.getContextPath() + "</h1>");
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
        String nit=request.getParameter("nit");
        String razon_social=request.getParameter("razon_social");
        String telefono=request.getParameter("telefono");
        String email=request.getParameter("email");
        String direccion=request.getParameter("direccion");
        int ciudad=Integer.parseInt(request.getParameter("ciudad"));
        String accion=request.getParameter("accion").toLowerCase();
        
        
        Proveedor pr=new Proveedor();
        
        pr.setNit(nit);
        pr.setRazon_social(razon_social);
        pr.setTelefono(telefono);
        pr.setEmail(email);
        pr.setDireccion(direccion);
        pr.setCiudad(ciudad);
        
        if(accion.equals("registrar")){
                if(ProveedorDao.registrar(pr)){
                    request.setAttribute("mensaje", "Proveedor Registrado con Exito");
                }else{
                    request.setAttribute("mensaje", "Proveedor Nooooooooooooooooooo Registrado con Exito");
                }
            }else if(accion.equals("actualizar")){
                if(ProveedorDao.registrar(pr)){
                    request.setAttribute("mensaje", "Proveedor Actualizado con Exito");
                }else{
                    request.setAttribute("mensaje", "Proveedor Nooooooooooooooooooo Actualizado con Exito");
                }
            }else if(accion.equals("eliminar")){
                if(ProveedorDao.eliminar(pr)){
                    request.setAttribute("mensaje", "Proveedor Eliminado con Exito");
                }else{
                    request.setAttribute("mensaje", "Proveedor Nooooooooooooooooooo Eliminado con Exito");
                }
            }else{
                request.setAttribute("mensaje", "Accion desconocida");            
        }
        request.getRequestDispatcher("registroProveedor.jsp").forward(request, response);
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
