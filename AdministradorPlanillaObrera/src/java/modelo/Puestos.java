
package modelo;

//import java.sql.SQLException;
import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;
//import javax.annotation.PostConstruct;
import javax.inject.Named;
import javax.faces.view.ViewScoped;


@Named(value = "puestos")
@ViewScoped
public class Puestos implements Serializable{

 private List<String> listaPuestos;
 private String paisSeleccionado;   

    
    
    
    //@PostConstruct
    /*
    public void init(){
        try {
            listaPuestos = ServicioPuestos.obtenerPuestos();
            System.out.println("lets gooooo");
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        
    }
    */
    
    public List<String> getListaPuestos() {
        return listaPuestos;
    }


    public String getPaisSeleccionado() {
        return paisSeleccionado;
    }

  
    public void setPaisSeleccionado(String paisSeleccionado) {
        this.paisSeleccionado = paisSeleccionado;
    }

    
    public Puestos() {
     try {
         this.listaPuestos = ServicioPuestos.obtenerPuestos();
     } catch (SQLException ex) {
         System.out.println(ex);
     }
    }
    
}
