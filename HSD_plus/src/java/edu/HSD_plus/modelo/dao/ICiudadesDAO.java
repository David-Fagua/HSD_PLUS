/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.dao;

import edu.HSD_plus.modelo.entities.Ciudades;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author SAM
 */
@Local
public interface ICiudadesDAO  extends DAO<Ciudades>{
    
    public List<Ciudades> obtenerciudadBusquedaxCadena(String cadena);
}
