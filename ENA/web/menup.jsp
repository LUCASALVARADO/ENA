<%-- 
    Document   : menup
    Created on : 12-06-2018, 22:18:18
    Author     : lucas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css">
        <title>JSP Page</title>
        <style>
            
            
            form {
                margin: 2%;
            }
            
            input {
                width: 250px;
                padding: 1%;
            }
            
        </style>
    </head>
    <body>
        
        <div class="m">
            <h1> Menú Principal </h1> 
            
            <form action="ingresarr.jsp"> 
                <input type="submit" value="Ingresar Requerimiento"> 
            </form> 
            
            <form action="consultarr.jsp"> 
                <input type="submit" value="Consultar Requerimiento"> 
            </form>
            
            <form action="cerrarr.jsp"> 
                <input type="submit" value="Cerrar Requerimiento"> 
            </form>
            
        </div>
    </body>
</html>
