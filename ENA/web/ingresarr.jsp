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
                vertical-align: top;
                width: 20%;
            }
            
            .i {
                padding: 5%;
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
                    <p> <select name="gerencia">
                            <option> Seleccionar </option>
                        </select> </p>
                    <p> <select name="depto">
                            <option> Seleccionar </option>
                        </select> </p>
                    <p> <select name="asignar"> 
                            <option> Seleccionar </option>
                        </select> </p>
                    <p> <select name="encargado"> 
                            <option> Seleccionar </option>
                        </select> </p>
                    <p> <textarea name="requerimiento" rows="10" cols="30"> Ingrese requerimientos 
                        </textarea> 
                    </p>    
                </div>
            </form>
            <div class="f">
                <form>
                    <input class="i" type="submit" value="Guardar">
                </form>
            </div>
            <div class="f">
                <form action="menup.jsp">
                    <input class="i "type="submit" value="Volver al Menú">
                </form>
            </div>
        </div>
    </body>
</html>
