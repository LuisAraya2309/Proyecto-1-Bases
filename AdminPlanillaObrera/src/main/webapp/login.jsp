

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
                response.sendRedirect("central.html");
            }
            else{
                out.println("Usuario no registrado <a href='index.html'>Intente de nuevo</a>");
            }
        %>
    </body>
</html>
