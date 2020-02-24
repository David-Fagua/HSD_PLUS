/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.Upload;

import java.io.File;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;
import javax.servlet.http.Part;

/**
 *
 * @author SAM
 */
public class FileUploadUtil {
    public static void saveFile(Part filePart, String path, String nameFile) throws Exception{
        File folder = new File(path);
        System.out.println(folder.getAbsolutePath());        
        if(!folder.exists()){
            folder.mkdirs();
        }
        try (InputStream is = filePart.getInputStream()){
            Files.copy(is, (new File(folder, nameFile)).toPath(), StandardCopyOption.REPLACE_EXISTING);
            FacesContext.getCurrentInstance().addMessage(null, new FacesMessage("Se Cargo Correctamente la Imagen"));            
        } catch (Exception e) {
            e.printStackTrace();
            throw new Exception("Error al subir la imagen al servidor", e);
        }
    }
    
}
