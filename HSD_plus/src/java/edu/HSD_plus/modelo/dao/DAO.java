/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.dao;


import java.util.List;

/**
 *
 * @author SAM
 */
public interface DAO<E>{

    void create(E usuarios);

    void edit(E usuarios);

    void remove(E usuarios);

    E find(Object id);

    List<E> findAll();

    List<E> findRange(int[] range);

    int count();
    
}
