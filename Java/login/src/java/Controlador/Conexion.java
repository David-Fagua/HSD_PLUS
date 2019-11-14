package controlador;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author fagua
 */
public class Conexion {
    private String USERNAME = "root";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "usuarios";
    private String CLASSNAME = "com.mysql.jdbc.driver";
    private String URL = "jdbc:mysql://"+HOST+":"+PORT+"/"+DATABASE;
    private Connection con;
    
    public Conexion (){
        try {
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR "+e);
        } catch (SQLException e){
        System.err.println("Error "+e);
        }
    }
    
    public Connection getConnection() {
        return con;
    }
    
    public static void main(String[] args) {
        Conexion con = new  Conexion();
    }
}
