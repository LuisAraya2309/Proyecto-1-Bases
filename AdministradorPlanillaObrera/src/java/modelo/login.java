
package modelo;

import javax.inject.Named;
import javax.enterprise.context.ApplicationScoped;


@Named(value = "login")
@ApplicationScoped
public class login {
    
    //Aqui se recogen los datos del login de la primera pagina que va con inicio.xhtml
    private String user;
    private String password;
 
    //Setters y Getters
    public String getUser() {
        return user;
    }


    public void setUser(String user) {
        this.user = user;
    }


    public String getPassword() {
        return password;
    }


    public void setPassword(String password) {
        this.password = password;
    }
    
    //Verificar Contraseña
    public boolean verificarLogin(){
        //verifica si el user y el password son correctos
        return (this.user.equals("admin"))&&(this.password.equals("admin")); 
    }

    
    public login() {
    }
    
}
