/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.converters;


import edu.HSD_plus.modelo.dao.ICiudadesDAO;
import edu.HSD_plus.modelo.entities.Ciudades;
import javax.enterprise.inject.spi.CDI;
import javax.faces.component.UIComponent;
import javax.faces.context.FacesContext;
import javax.faces.convert.Converter;
import javax.faces.convert.FacesConverter;

/**
 *
 * @author SAM
 */
@FacesConverter(forClass = Ciudades.class)
public class CiudadesConverter  implements Converter{
    
    private ICiudadesDAO cdDAO;

    public CiudadesConverter() {
        cdDAO = CDI.current().select(ICiudadesDAO.class).get();
    }
    
    
    @Override
    public Object getAsObject(FacesContext context, UIComponent component, String value) {
        if(value != null){
            try {
                Integer id = Integer.valueOf(value);  
                return cdDAO.find(id);
            } catch (NumberFormatException numberFormatException) {
            }
        }
        return null;
    }

    @Override
    public String getAsString(FacesContext arg0, UIComponent arg1, Object obj) {
        if(obj != null && obj instanceof Ciudades){
            Ciudades td = (Ciudades) obj;
            return td.getIdCiudad().toString();
        }
        return "";
    }
    
}
