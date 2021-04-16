
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Borrar Puesto</title>
        <link href = "styleFuncionalidades.css" type = "text/css"  rel = "stylesheet" /> 
    </head>
    <body>
        <form action="puestoABorrar.jsp">
        Nombre del puesto a borrar: <input type="text" name="puesto" required="">
        <input type="submit" name="borrar" id="borrar" value="Borrar">
        </form>
        <a href='central.html'>Regresar a la central</a>
    </body>
</html>
