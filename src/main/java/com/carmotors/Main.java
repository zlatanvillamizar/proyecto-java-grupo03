package com.carmotors;

import com.carmotors.config.ConexionFactory;

import java.sql.Connection;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) {

        System.out.println("=== CarMotors SGT ===");
        System.out.println("Probando conexión con MySQL...");

        try (Connection conexion = ConexionFactory.obtenerConexion()) {

            if (conexion != null && !conexion.isClosed()) {
                System.out.println("Conexión exitosa con la base de datos CarMotors.");
            }

        } catch (SQLException e) {
            System.out.println("Error al conectar con MySQL:");
            System.out.println(e.getMessage());
        }
    }
}