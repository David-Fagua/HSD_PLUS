package org.apache.jsp.esp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.Connection;

public final class InicioSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html; charset=ISO-8859-1");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <title>Iniciar Sesión</title>\r\n");
      out.write("\r\n");
      out.write("    <link rel=\"icon\" type=\"image/png\" href=\"../assets/Img/Logo.png\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\r\n");
      out.write("    <meta http-equiv=\"Content-Tipe\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div>\r\n");
      out.write("  <nav class=\"navbar navbar-expand-lg fixed-top navbar-light bg-light\">\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\" class=\"navbar-brand\" href=\"#\">\r\n");
      out.write("        <img src=\"");
      out.print(request.getContextPath());
      out.write("/assets/Img/Logo.png\" width=\"35\" height=\"35\" >\r\n");
      out.write("    <a href=\"");
      out.print(request.getContextPath());
      out.write("/index.jsp\" class=\"navbar-brand\" href=\"#\">HSD PLUS</a>\r\n");
      out.write("   <button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("    <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("    </button>\r\n");
      out.write("  </nav>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("<br/>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"row\">\r\n");
      out.write("    <div class=\"col-md-4\">\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"col-md-4\">\r\n");
      out.write("      <center>\r\n");
      out.write("        <img src=\"");
      out.print(request.getContextPath());
      out.write("/assets/Img/Logo.png\" width=\"100\" height=\"100\" alt=\"HSD PLUS\">\r\n");
      out.write("        <h2>Iniciar Sesión</h2>\r\n");
      out.write("      </center>\r\n");
      out.write("        <div>\r\n");
      out.write("            <form action=\"\" method=\"post\">\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                  <input required=\"true\" type=\"email\" placeholder=\"Example@email.com\" name=\"correo\" class=\"form-control\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"form-group\">\r\n");
      out.write("                    <input required=\"true\" style=\"float:center;\" name=\"pass\" id=\"pass\" type=\"password\" class=\"form-control\" placeholder=\"Digite su contraseña\">\r\n");
      out.write("                </div>\r\n");
      out.write("                <center>\r\n");
      out.write("                    <button style=\"float:center;\" class=\"btn btn-primary btn-lg\" role=\"button\" type=\"submit\" name=\"envio\">Ingresar</button>\r\n");
      out.write("                </center>\r\n");
      out.write("            </form>\r\n");
      out.write("            <div class=\"text-center\">\r\n");
      out.write("                <p>No estoy registrado\r\n");
      out.write("                    <a href=\"Registrar.jsp\">Registrar</a>\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"text-center\">\r\n");
      out.write("                <a href=\"Recordar.jsp\">Recordar contraseña</a>\r\n");
      out.write("            </div>\r\n");
      out.write("            <br/>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
