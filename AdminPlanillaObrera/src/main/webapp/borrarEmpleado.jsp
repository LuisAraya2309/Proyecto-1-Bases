

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Empleado</title>
        <link href = "styleFuncionalidades.css" type = "text/css"  rel = "stylesheet" /> 
    </head>
    <body>
        <form action="empleadoABorrar.jsp">
        Nombre del empleado a borrar: <input type="text" name="nombre" required="">
        <input type="submit" name="borrar" id="borrar" value="Borrar">
        </form>
        <a href='central.html'>Regresar a la central</a>
    </body>
</html>
