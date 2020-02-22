
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class Conexion {
    Connection con;
    String url="jdbc:mysql://localhost:3306/hsd_plus";
    String user="root";
    String pass="";
    public DriverManagerDataSource Conectar(){
        DriverManagerDataSource dataSource=new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/hsd_plus");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
           
    }  
    public Connection Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,pass);
        } catch (Exception e) {
        }
        return con;
    }
}
