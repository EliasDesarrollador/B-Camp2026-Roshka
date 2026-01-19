package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {

    private static final String  URL = "jdbc:postgresql://localhost:5432/postgres?currentSchema=prestamo_libro_ej4";
    private static final String USER = "postgres" ;
    private static final String PASS = "Es0703";

    public static Connection getConexion (){
        try {
            return DriverManager.getConnection(URL,USER,PASS);
        }catch (Exception e ) {
            System.out.println("Error de conexion a la DB");
            e.printStackTrace();
            return null;
        }
    }
}
