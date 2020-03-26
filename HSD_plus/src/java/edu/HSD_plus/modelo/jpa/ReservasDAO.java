/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package edu.HSD_plus.modelo.jpa;

import edu.HSD_plus.modelo.dao.IReservasDAO;
import edu.HSD_plus.modelo.entities.Reservas;
import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

/**
 *
 * @author SAM
 */
@Stateless
public class ReservasDAO extends AbstractDAO<Reservas> implements IReservasDAO {

    public ReservasDAO() {
        super(Reservas.class);
    }

    public List<Reservas> obtenerreservaBusquedaxCadena(String cadena) {
        Query q = em.createNativeQuery("SELECT `reservas`.`id_reserva`,\n"
                + "    `reservas`.`fecha_reserva`,\n"
                + "    `reservas`.`cantidad`,\n"
                + "    `reservas`.`precio_total`,\n"
                + "    `reservas`.`estado`,\n"
                + "    `reservas`.`observaciones`,\n"
                + "    `reservas`.`cliente`\n"
                + "FROM `hsd_plus`.`reservas` WHERE cliente LIKE '%" + cadena + "%';", Reservas.class);
        List<Reservas> lst = q.getResultList();
        return lst;
    }

    public List<Reservas> obtenerreservaBusquedaxCadenafecha(String cadena) {
        Query q = em.createNativeQuery("SELECT `reservas`.`id_reserva`,\n"
                + "    `reservas`.`fecha_reserva`,\n"
                + "    `reservas`.`cantidad`,\n"
                + "    `reservas`.`precio_total`,\n"
                + "    `reservas`.`estado`,\n"
                + "    `reservas`.`observaciones`,\n"
                + "    `reservas`.`cliente`\n"
                + "FROM `hsd_plus`.`reservas` WHERE fecha_reserva LIKE '%" + cadena + "%';", Reservas.class);
        List<Reservas> lst = q.getResultList();
        return lst;
    }

    public int cantidadVentas(boolean estado) {
        int cantidad = 0;
        try {
            Query q = em.createNativeQuery("SELECT COUNT(id_reserva) FROM reservas WHERE reservas.estado= ?");
            q.setParameter(1, estado);
            long cantidadL = (long) q.getSingleResult();
            cantidad = (int) cantidadL;
        } catch (Exception e) {
        }
        return cantidad;
    }

}
