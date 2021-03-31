
package modelo;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Named;
import javax.enterprise.context.ApplicationScoped;


@Named(value = "puestos")
@ApplicationScoped
public class Puestos {

  
    
    private List<String> listaPuestos = getListaPuestos();
    private String option;
    
    public List<String> getListaPuestos() {
        System.out.println("HOLAAAAAAAAAAAAAAAAAA");
        try{
            String conexionUrl = "jdbc:sqlserver://localhost:1433;databaseName=PlanillaObrera;user=sa;password=admin";
            Connection conexion =  DriverManager.getConnection(conexionUrl);
            System.out.println("Paso la conexion");
            String callSP = "EXECUTE <sp_ListarPuestos>";
            PreparedStatement ps = conexion.prepareStatement(callSP);
            ResultSet dataset = ps.executeQuery();
            List<String> puestosConvertidos = new ArrayList<>();
            while(dataset.next()){
               puestosConvertidos.add(dataset.getString("Nombre"));
            }

            this.listaPuestos = puestosConvertidos;
            System.out.println("ARRIBA ESPAÑA");
        }catch(SQLException ex){
            System.out.println("EXCEPTION SQL JAJAJ AQUI");
            System.out.println(ex);
        }
        
        return listaPuestos;
    }
    
    
    public String getOption() {
        return option;
    }

 
    public void setOption(String option) {
        this.option = option;
    }
    
    public Puestos() {
    }
    
}
