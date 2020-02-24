/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.converters;


import edu.HSD_plus.modelo.dao.IRolesDAO;
import edu.HSD_plus.modelo.entities.Roles;
import javax.enterprise.inject.spi.CDI;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author SAM
 */
@FacesConverter(forClass = Roles.class)
public class RolesConverter implements Converter{
    
    private     IRolesDAO rlDAO;

    public RolesConverter() {
        rlDAO = CDI.current().select(IRolesDAO.class).get();
    }

    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if(value != null){
            try {
                Integer id = Integer.valueOf(value);  
                return rlDAO.find(id);
            } catch (NumberFormatException numberFormatException) {
            }
        }
        return null;
    }

    @Override
    public String getAsString(FacesContext arg0, UIComponent arg1, Object obj) {
        if(obj != null && obj instanceof Roles){
            Roles td = (Roles) obj;
            return td.getIdRol().toString();
        }
        return "";
    }
    
}
