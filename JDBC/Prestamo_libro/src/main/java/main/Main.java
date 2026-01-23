package main;

import config.Conexion;
import java.sql.Connection;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        try {
            Connection con = Conexion.getConexion();
            if (con != null) {
                System.out.println("Conexión exitosa");
                // cerrar si no usamos try-with-resources dentro de getConexion
                con.close();
            } else {
                System.out.println("No se pudo conectar");
            }
        } catch (SQLException e) {
            System.out.println("Error al obtener la conexión: " + e.getMessage());
            // e.printStackTrace(); // opcional para debug
        }
    }
}
