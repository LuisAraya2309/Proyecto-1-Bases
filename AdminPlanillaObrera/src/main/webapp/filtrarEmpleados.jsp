
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="conexion.conexionBD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Filtrar Empleados</title>
    </head>
    <body>
        <h1>Empleados: </h1>
        <form action = "editarEmpleados">
            <select name="empleado" id="empleado">
           <%
            try{ 
                conexionBD conection = new conexionBD();
                Connection conexion = conection.getConexion();
                String filtro = request.getParameter("filtro") + "%";
                String callSP = "EXECUTE sp_ListarEmpleadosFiltro ?";
                PreparedStatement ps = conexion.prepareStatement(callSP);
                ps.setString(1,filtro);
                ResultSet dataset = ps.executeQuery();
                List<String> empleadosConvertidos = new ArrayList<>();
                while(dataset.next()){
                    String empleadoConstruir ="";
                    empleadoConstruir+= "Nombre: " + dataset.getString("Nombre") + " ,Puesto: " + dataset.getString(2);
                    empleadosConvertidos.add(empleadoConstruir);
                }
                int size = empleadosConvertidos.size();
                for(int i =0;i<size;i++){
                    out.println("<option>"+empleadosConvertidos.get(i)+"</option>");
               }

            }catch(SQLException ex){
               System.out.println(ex);
            } 
            %>
        </select>
        </form>
        <a href='central.html'>Regresar a la central</a>
    </body>
</html>
