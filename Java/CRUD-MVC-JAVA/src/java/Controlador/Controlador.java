/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
public class Controlador extends HttpServlet {
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
            out.println("<title>Servlet Controlador</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Controlador at " + request.getContextPath() + "</h1>");
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

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
