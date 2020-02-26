package Controlador;

import java.io.*;
import java.net.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.fileupload.*;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.io.FilenameUtils;
import java.io.File;
import java.lang.Exception;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrador
 */
public class CargarFichero extends HttpServlet
{

    /**
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    @Override
protected void doPost(HttpServletRequest request, HttpServletResponse response)
throws ServletException, IOException
{
    PrintWriter out=response.getWriter();
    response.setContentType("application/vnd.wap.xhtml+xml");
    response.setContentType("text/html");

/* Miramos si la petición HTTP está codificada en formato multiparte.
Esto es para que lea los parametros y el fichero a la vez. */
try{
    if (ServletFileUpload.isMultipartContent(request)){
    ServletFileUpload servletFileUpload = new ServletFileUpload(new DiskFileItemFactory());

    /* Al ser multiparte, con servletFileUpload.parseRequest(request) recibimos una lista de FileItem. */
    List fileItemsList = servletFileUpload.parseRequest(request);

    String optionalFileName = "";

    /* FileItem es un campo simple, del tipo nombre-valor*/
    FileItem fileItem = null;

    Iterator it = fileItemsList.iterator();
    String fieldName=null;
    String value=null;
    while (it.hasNext()){
    FileItem fileItemTemp = (FileItem)it.next();
    if (fileItemTemp.isFormField()){
    fieldName=fileItemTemp.getFieldName();
    value=fileItemTemp.getString();

    if (fileItemTemp.getFieldName().equals("filename"))
    optionalFileName = fileItemTemp.getString();
    }
    else
    fileItem = fileItemTemp;
    }

    if (fileItem!=null)
    {
        // Nombre del archivo a cargar
        String fileName = fileItem.getName();
        

        out.println("<b>Info del fichero cargado:</b><br/>");

        /*Nos dice el tipo de fichero. Ej.: .jpg (image/jpge), .txt (text/plain) ...)*/

        out.println("Tipo de fichero: "+fileItem.getContentType()+"<br/>");
        out.println("Nombre del campo: "+fileItem.getFieldName()+"<br/>");
        out.println("Nombre del fichero: "+fileName+"<br/>");
        out.println("Tamaño del fichero: "+fileItem.getSize()+"<br/><br/>");


        /* Guardar el fichero cargado si su tamaño es mayor que 0. */
        if (fileItem.getSize() > 0)
        {
            if (optionalFileName.trim().equals(""))
                fileName = FilenameUtils.getName(fileName);
            else
                fileName = optionalFileName;
                String dirName =getServletContext().getRealPath("/")+ "/Archivos/";
                File saveTo = new File(dirName + fileName);
                out.println("GUARDADO EN: <b>"+saveTo.toString()+"</b><br/>");
            try 
            {
                fileItem.write(saveTo);
                out.println("<b>El fichero cargado se ha guardado correctamente.</b><br/>");
                
                File archivo = null;
                FileReader fr = null;
                BufferedReader Leer = null;

                String[] registro;//arreglo utilizado para, almacenar, la fragmemtación del registro, separado por comas.
                String cadena="";// Variable que sirve para almacenar, la información del registro
                out.println("Información recolectada del archivo<br/><br/>");
                out.println("||Posición ||      Nombre       ||  Número camiseta || Minutos || Goles anotados||<br/><br/>");
                try 
                {
                    //Esta es la manera como nos cumunicamos, con un archivo plano, se genera un flujo al archivo plano
                    archivo= new File(saveTo.toString());
                    fr = new FileReader (archivo);
                    Leer = new BufferedReader(fr);
                    cadena = Leer.readLine();
                    while (cadena != null)
                    {
                        registro=cadena.split(",");
                        cadena = Leer.readLine(); 
                        out.println("||"+registro[0]+"||"+registro[1]+"||"+registro[2]+"||"+registro[3]+"||"+registro[4]+"||<br/>");
                    }

                }
                catch (Exception ev)
                {
                     out.println("<b>Error: en el procesamiento del archivo</b>");
                }
                finally 
                {
                    try
                    {
                        if (Leer != null)
                        {    
                           fr.close();
                        } 
                    }    
                    catch (Exception e)
                    {
                        out.println("<b>Error: al cerrar el archivo</b>");
                    }
                }
                
                    
            } //try
            catch (Exception e)
            {
                out.println("<br/>"+e.getMessage()+"<br/><br/>");
                out.println("<b>Ha ocurrido un error cuando intentábamos guardar el fichero cargado.</b>");
            }
        } // if
    } // if
    } // while
    } //try
    catch(FileUploadException e)
    {
    }
out.println("</p>");
out.println("</body>");
out.println("</html>");
}
}
