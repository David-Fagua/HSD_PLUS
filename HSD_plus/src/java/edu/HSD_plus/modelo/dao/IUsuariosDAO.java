/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.dao;

import edu.HSD_plus.modelo.entities.Usuarios;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author SAM
 */
@Local
public interface IUsuariosDAO  extends DAO<Usuarios>{

    Usuarios findByEmailAndPassword(String email, String password);
    
    public List<Usuarios> findAll(int i);
    
    public int cantidadUsuario(boolean estado); 
    
    public int ingresarUsuarioRol(Usuarios usu);
    
    public List<Usuarios> obtenernombreUsuBusquedaxCadena(String cadena);
    
    public Usuarios consultaUsuario(String email, int numerodocumento);

    
}
