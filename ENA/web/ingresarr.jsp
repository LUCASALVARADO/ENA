<%-- 
    Document   : ingresarr
    Created on : 12-06-2018, 22:36:41
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
            .f1 .f2 {
                display: inline-block;
                width: 40%;
            }
        </style>
    </head>
    <body>
        <div id="menu">
            <h1> Ingresar Requerimiento </h1>
            <form>
                <div id="f1">   
                    Gerencia:  
                    Depto: 
                    Asignar a:  
                    Encargado:  
                    Requerimiento: 
                </div>    
                <div id="f2">
                    <select name="gerencia"> </select>
                    <select name="depto"> </select> 
                    <select name="asignar"> </select> 
                    <select name="encargado"> </select> 
                    <textarea name="requerimiento" rows="10" cols="50"> Ingrese requerimientos 
                                   </textarea>
                </div>    
            </form>
        </div>
    </body>
</html>
