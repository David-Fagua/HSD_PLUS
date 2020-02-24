/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.converters;


import edu.HSD_plus.modelo.dao.IProveedoresDAO;
import edu.HSD_plus.modelo.entities.Proveedores;
import javax.enterprise.inject.spi.CDI;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author SAM
 */
@FacesConverter(forClass = Proveedores.class)
public class ProveedoresConverter implements Converter{

    
    private final IProveedoresDAO proDAO;

    public ProveedoresConverter() {
        proDAO = CDI.current().select(IProveedoresDAO.class).get();
    }
    
    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if(value != null){
            try {
                Integer id = Integer.valueOf(value);  
                return proDAO.find(id);
            } catch (NumberFormatException numberFormatException) {
            }
        }
        return null;
    }

    @Override
    public String getAsString(FacesContext arg0, UIComponent arg1, Object obj) {
        if(obj != null && obj instanceof Proveedores ){
            Proveedores pro = (Proveedores) obj;
            return pro.getIdProveedor().toString();
        }
        return "";
    }
    
}
