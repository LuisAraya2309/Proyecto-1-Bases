
package modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class Prueba {

   
    public static void main(String[] args) {
      try{
            String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;user=sa;password=admin";
            Connection conexion =  DriverManager.getConnection(conexionUrl);
            System.out.println("Paso la conexion");
            String callSP = "EXECUTE sp_EditarPuesto ?,?,?";
            PreparedStatement ps = conexion.prepareStatement(callSP);
            ps.setString(1, "Electricista");
            ps.setString(2, "Forense");
            ps.setInt(3,5678);
            int rowsAffected = ps.executeUpdate();
            System.out.println("Rows affected" + rowsAffected);
            /*List<String> puestosConvertidos = new ArrayList<>();
            while(dataset.next()){
               puestosConvertidos.add(dataset.getString("Nombre"));
               
            }
            int i = puestosConvertidos.size();
            int a = 0;
            while(a<i){
                System.out.println(puestosConvertidos.get(a));a++;
            }*/
            
        }catch(SQLException ex){
            System.out.println("EXCEPTION SQL JAJAJ AQUI");
            System.out.println(ex);
        }
    }
    
}
