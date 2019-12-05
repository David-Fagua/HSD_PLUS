
package Controlador;

import Modelo.Proveedor;
import ModeloDAO.ProveedorDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ControladorProveedor extends HttpServlet {
    String listar="vistas/proveedor/listar.jsp";
    String add="vistas/proveedor/add.jsp";
    String edit="vistas/proveedor/edit.jsp";
    Proveedor pv=new Proveedor();
    ProveedorDAO dao=new ProveedorDAO();
    int id_empresa;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorProveedor</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorProveedor at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("Agregar")) {
            String nit = request.getParameter("txtnit");
            String razon_social = request.getParameter("txtrazon_social");
            String telefono = request.getParameter("txttelefono");
            String email = request.getParameter("txtemail");
            String direccion = request.getParameter("txtdireccion");
            int ciudad = Integer.parseInt(request.getParameter("txtciudad"));
            pv.setNit(nit);
            pv.setRazon_social(razon_social);
            pv.setTelefono(telefono);
            pv.setEmail(email);
            pv.setDireccion(direccion);
            pv.setCiudad(ciudad);
            dao.add(pv);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idpro", request.getParameter("id_empresa"));
            acceso = edit;
        } else if (action.equalsIgnoreCase("Actualizar")) {
            id_empresa=Integer.parseInt(request.getParameter("txtid_empresa"));
            String nit = request.getParameter("txtnit");
            String razon_social = request.getParameter("txtrazon_social");
            String telefono = request.getParameter("txttelefono");
            String email = request.getParameter("txtemail");
            String direccion = request.getParameter("txtdireccion");
            int Ciudad = Integer.parseInt(request.getParameter("txtciudad"));
            
            pv.setId_empresa(id_empresa);
            pv.setNit(nit);
            pv.setRazon_social(razon_social);
            pv.setTelefono(telefono);
            pv.setEmail(email);
            pv.setRazon_social(razon_social);
            pv.setDireccion(direccion);
            pv.setCiudad(Ciudad);
            dao.edit(pv);
            acceso = listar;
        } else if (action.equalsIgnoreCase("eliminar")) {
            id_empresa =Integer.parseInt(request.getParameter("id_empresa"));
            pv.setId_empresa(id_empresa);
            dao.eliminar(id_empresa);
            acceso = listar;
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
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
