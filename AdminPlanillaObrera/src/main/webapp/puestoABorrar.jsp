
<%@page import="java.util.List"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexionBD"%>
<%@page import="validaciones.validacionesSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Puesto</title>
        <link href = "styleFuncionalidades.css" type = "text/css"  rel = "stylesheet" /> 
    </head>
    <body>
        <%
          String puesto = request.getParameter("puesto");
          if(validacionesSQL.existePuesto(puesto)){
            try{ 
                  conexionBD conection = new conexionBD();
                  Connection conexion = conection.getConexion();
                  String callSP = "EXECUTE sp_EliminarPuesto ?";
                  PreparedStatement ps = conexion.prepareStatement(callSP);
                  ps.setString(1,puesto);
                  ps.executeQuery();

              }catch(SQLException ex){

              }
              out.println("<h1>Puesto eliminado con éxito</h1>");
              out.println("<a href='central.html'>Regresar a la central</a>");
              out.println("<a href='borrarPuesto.jsp'>Regresar a la eliminación de puestos</a>");

            }
            else{
                out.println("<h1>El puesto ingresado no existe</h1>");
                out.println("<a href='central.html'>Regresar a la central</a>");
                out.println("<a href='borrarPuesto.jsp'>Regresar a la eliminación de puestos</a>");
            }
          
        %>
        
    </body>
</html>
