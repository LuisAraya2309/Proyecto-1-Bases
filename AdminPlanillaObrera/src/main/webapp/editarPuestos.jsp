<%-- 
    Document   : editarPuestos
    Created on : 5 abr. 2021, 13:40:37
    Author     : luist
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Puestos</title>
    </head>
    <body>
        <form action="puestoAEditar.jsp">
            Puesto a editar: <input type="text" name="puestoEditar" >
            Nuevo nombre: <input type="text" name="nuevoNombre" required=""> 
            Nuevo salario: <input type="text" name="nuevoSalario" required=""> 
            <input type="submit" name="editar" id="editar" value="Editar">
        </form>
        <a href='central.html'>Regresar a la central</a>
    </body>
</html>
