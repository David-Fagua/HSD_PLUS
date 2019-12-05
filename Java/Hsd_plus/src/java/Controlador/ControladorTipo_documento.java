
package Controlador;

import Modelo.Tipo_documento;
import ModeloDAO.Tipo_documentoDAO;
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
public class ControladorTipo_documento extends HttpServlet {
    String listar="vistas/tipodocumento/listar.jsp";
    String add="vistas/tipodocumento/add.jsp";
    String edit="vistas/tipodocumento/edit.jsp";
    Tipo_documento td=new Tipo_documento();
    Tipo_documentoDAO dao=new Tipo_documentoDAO();
    int id_tdocumento;
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControladorTipo_documento</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControladorTipo_documento at " + request.getContextPath() + "</h1>");
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
            String abrebiatura=request.getParameter("txtabrebiatura");
            String nombre=request.getParameter("txtnombre");
            td.setAbrebiatura(abrebiatura);
            td.setNombre(nombre);
            dao.add(td);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("editar")){
            request.setAttribute("idtid", request.getParameter("id_tdocumento"));
            acceso=edit;
        }
        else if(action.equalsIgnoreCase("Actualizar")){
            id_tdocumento=Integer.parseInt(request.getParameter("txtid_tdocumento"));
            String abrebiatura=request.getParameter("txtabrebiatura");
            String nombre=request.getParameter("txtnombre");
            td.setId_tdocumento(id_tdocumento);
            td.setAbrebiatura(abrebiatura);
            td.setNombre(nombre);
            dao.edit(td);
            acceso=listar;
        }
        else if(action.equalsIgnoreCase("eliminar")){
            id_tdocumento=Integer.parseInt(request.getParameter("id_tdocumento"));
            td.setId_tdocumento(id_tdocumento);
            dao.eliminar(id_tdocumento);
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
