

<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexionBD"%>
<%@page import="conexion.conexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Puesto Editado</title>
    </head>
    <body>
        <%
            String puestoAEditar = request.getParameter("puesto");
            String nuevoNombre = request.getParameter("nuevoNombre");
            int nuevoSalario = Integer.parseInt((request.getParameter("nuevoSalario")));
            if(nuevoNombre.length()<40){
                try{ 
                    conexionBD conection = new conexionBD();
                    Connection conexion = conection.getConexion();
                    String callSP = "EXECUTE sp_EditarPuesto ?,?,?";
                    PreparedStatement ps = conexion.prepareStatement(callSP);
                    ps.setString(1,puestoAEditar);
                    ps.setString(2,nuevoNombre);
                    ps.setInt(3,nuevoSalario);
                    ps.executeQuery();
                    

                }catch(SQLException ex){
                    

                }
                out.println("<h1>Puesto editado con éxito</h1>");
                out.println("<a href='central.html'>Regresar a la central</a>");
            }
            else{
            out.println("<h1>Nombre invalido, debe de tener menos de 40 caracteres</h1>");
            out.println("<a href='listarPuestos.jsp'>Regresar al listado de puestos</a>");
            
            }
            
            
        %>
        <
    </body>
</html>
