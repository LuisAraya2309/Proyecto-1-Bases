<%-- 
    Document   : puestoAIngresar
    Created on : 5 abr. 2021, 15:27:59
    Author     : luist
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexionBD"%>
<%@page import="validaciones.validacionesSQL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href = "styleFuncionalidades.css" type = "text/css"  rel = "stylesheet" /> 
        <title>Puesto Ingresado</title>
    </head>
    <body>
        <%
            String nuevoNombre = request.getParameter("nuevoNombre");
            int nuevoSalario = Integer.parseInt((request.getParameter("nuevoSalario")));
            if((nuevoNombre.length()<40)&&(!validacionesSQL.existePuesto(nuevoNombre))){
                try{ 
                    conexionBD conection = new conexionBD();
                    Connection conexion = conection.getConexion();
                    String callSP = "EXECUTE sp_InsertarPuesto ?,?";
                    PreparedStatement ps = conexion.prepareStatement(callSP);
                    ps.setString(1,nuevoNombre);
                    ps.setInt(2,nuevoSalario);
                    ps.executeQuery();
                }catch(SQLException ex){
                    System.out.println(ex);

                }
                out.println("<h1>Puesto ingresado con éxito</h1>");
                out.println("<a href='central.html'>Regresar a la central</a>");
                out.println("<a href='ingresarPuestos.html'>Regresar a la inserción de puestos</a>");
            }
            else{
            out.println("<h1>Nombre invalido, debe de tener menos de 40 caracteres y debe ser un nuevo puesto</h1>");
            out.println("<a href='ingresarPuestos.jsp'>Regresar a la inserción de puestos</a>");
            
            }
            
            
        %>
    </body>
</html>
