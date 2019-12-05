/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Roles;
import ModeloDAO.RolesDAO;
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
public class ControladorRoles extends HttpServlet {
    String listar="vistas/roles/listar.jsp";
    String add="vistas/roles/add.jsp";
    String edit="vistas/roles/edit.jsp";
    Roles r=new Roles();
    RolesDAO dao=new RolesDAO();
    int id_rol;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorRoles</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorRoles at " + request.getContextPath() + "</h1>");
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
            String fecha_apertura=request.getParameter("txtfecha_apertura");
            r.setNombre(nombre);
            r.setFecha_apertura(fecha_apertura);
            dao.add(r);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idrol", request.getParameter("id_rol"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id_rol=Integer.parseInt(request.getParameter("txtid_rol"));
            String nombre=request.getParameter("txtnombre");
            String fecha_apertura=request.getParameter("txtfecha_apertura");
            r.setId_rol(id_rol);
            r.setNombre(nombre);
            r.setFecha_apertura(fecha_apertura);
            dao.edit(r);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id_rol=Integer.parseInt(request.getParameter("id_rol"));
            r.setId_rol(id_rol);
            dao.eliminar(id_rol);
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
