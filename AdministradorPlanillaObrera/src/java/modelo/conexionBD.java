
package modelo;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.DatabaseMetaData;

public class conexionBD {
    
    public static void main(String[] args) {
            String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;integratedSecurity=true;";
            try{
                Connection con =  DriverManager.getConnection(conexionUrl);
                System.out.println("Conexion lista");
            } catch(SQLException ex){
                System.out.println(ex.toString());
                
            }
        }
    
}
