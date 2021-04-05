/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package validaciones;

/**
 *
 * @author luist
 */
public class ValidarLogin {
    public static boolean validLogin(String user,String password){
        return (user.equals("sa"))&&(password.equals("admin")); 
    }
    
}
