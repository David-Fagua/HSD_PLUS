/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.dao;

import edu.HSD_plus.modelo.entities.Reservas;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author SAM
 */
@Local
public interface IReservasDAO extends DAO<Reservas>{
    
    public List<Reservas> obtenerreservaBusquedaxCadena(String cadena);
    
    public List<Reservas> obtenerreservaBusquedaxCadenafecha(String cadena);
    
    public int cantidadVentas(boolean estado);
}
