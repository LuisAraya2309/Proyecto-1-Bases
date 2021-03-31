
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class conexionBD {

    //Atributes
    private Connection conexion;
 
    public void setConexion(Connection conexion) {
        this.conexion = conexion;
    }
    
    public Connection getConexion() {
        return conexion;
    }
    
    public conexionBD(){
        String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;user=sa;password=admin";
            try{
                Connection con =  DriverManager.getConnection(conexionUrl);
                System.out.println("Conexion lista");
                this.conexion = con;
            } catch(SQLException ex){
                System.out.println(ex.toString());
            }
    }
    
    
}
