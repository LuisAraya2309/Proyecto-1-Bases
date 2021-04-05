
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.ejb.Stateless;


@Stateless
public class ServicioPuestos {
    
    public static List<String> obtenerPuestos() throws SQLException{
        System.out.println("Ejecutando obtenerPuestos()");
        try{ 
            String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;user=sa;password=admin;";
            Connection conexion =  DriverManager.getConnection(conexionUrl);
            System.out.println("Paso la conexion");
            String callSP = "EXECUTE sp_ListarPuestos";
            PreparedStatement ps = conexion.prepareStatement(callSP);
            ResultSet dataset = ps.executeQuery();
            List<String> puestosConvertidos = new ArrayList<>();
            while(dataset.next()){
               puestosConvertidos.add(dataset.getString("Nombre"));
            }
            System.out.println("ARRIBA ESPAÑA");
            return puestosConvertidos;
            
        }catch(SQLException ex){
            System.out.println("EXCEPTION SQL");
            System.out.println(ex);
            return null;
        }

    }
  
}
