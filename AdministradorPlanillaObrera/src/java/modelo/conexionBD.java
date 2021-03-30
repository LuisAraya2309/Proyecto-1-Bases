/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import javax.inject.Named;
import javax.enterprise.context.ApplicationScoped;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


@Named(value = "conexionBD")
@ApplicationScoped
public class conexionBD {
    public static Connection getConexion() {
            String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;user=sa;password=admin";
            try{
                Connection con =  DriverManager.getConnection(conexionUrl);
                System.out.println("Conexion lista");
                return con;
            } catch(SQLException ex){
                System.out.println(ex.toString());
                return null;
            }
        }
    
    public conexionBD() {
    }
    
}
