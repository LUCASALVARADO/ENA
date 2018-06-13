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
            
            .f {
                display: inline-block;
                width: 40%;
            }
        </style>
    </head>
    <body>
        <div class="m">
            <h1> Ingresar Requerimiento </h1>
            <form>
                <div class="f">   
                    <p> Gerencia: </p>  
                    <p> Depto: </p>
                    <p> Asignar a: </p> 
                    <p> Encargado: </p> 
                    <p> Requerimiento: </p>
                </div>    
                <div class="f">
                    <p> <select name="gerencia"> </select> </p>
                    <p> <select name="depto"> </select> </p>
                    <p> <select name="asignar"> </select> </p>
                    <p> <select name="encargado"> </select> </p>
                    <p> <textarea name="requerimiento" rows="10" cols="50"> Ingrese requerimientos 
                        </textarea> 
                    </p>    
                </div>    
            </form>
        </div>
    </body>
</html>
