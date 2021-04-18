

<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexionBD"%>
<%@page import="validaciones.validacionesSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comprobando</title>
        <link href = "styleFuncionalidades.css" type = "text/css"  rel = "stylesheet" /> 
    </head>
    <body>
        <%
            String user = request.getParameter("user");
            String password = request.getParameter("password");
            if(validacionesSQL.validLogin(user, password)){
                try{ 
                conexionBD conection = new conexionBD();
                Connection conexion = conection.getConexion();
                String callSP = "EXECUTE sp_ListarUsuarios";
                PreparedStatement ps = conexion.prepareStatement(callSP);
                ResultSet dataset = ps.executeQuery();
                if(dataset.equals(null)){
                    String cargarXML = "EXECUTE sp_CargarXML";
                    PreparedStatement cargar = conexion.prepareStatement(cargarXML);
                    cargar.executeQuery();
                }
                response.sendRedirect("central.html");

            }catch(SQLException ex){
              
            }    
            }
            else{
                out.println("Usuario no registrado <a href='index.html'>Intente de nuevo</a>");
            }
        %>
    </body>
</html>
