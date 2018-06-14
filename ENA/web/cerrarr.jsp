<%-- 
    Document   : cerrarr
    Created on : 12-06-2018, 22:37:04
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
            
            
            #bf {
                margin-top: 60px;
            }
            
            
        </style>
    </head>
    <body>
        <div class="m" id="m2">
            <h1> Consultar Requerimientos </h1>
            <form>
                <div class="f"> 
                    <p> Gerencia: </p>  
                    <p> Depto: </p>
                    <p> Asignado a: </p> 
                    
                </div>    
                <div class="f">
                    <p> <select name="gerencia">
                            <option> Todo </option>
                        </select> </p>
                    <p> <select name="depto">
                            <option> Todo </option>
                        </select> </p>
                    <p> <select name="asignar"> 
                            <option> Todo </option>
                        </select> </p>
                </div>
                <div class="f" id="bf">
                    <input class="i" type="submit" value="Buscar">
                </div>
            </form>
            <table>
                <tr>
                    <th> Gerencia</th>
                    <th> Depto. </th>
                    <th> Asignado a</th>
                    <th> Requerimiento </th>
                    <th> </th>
                </tr>
                <tr>
                    <td> XXXXXXX</td>
                    <td> XXXXXXX</td>                    
                    <td> XXXXXXX</td>                    
                    <td> XXXXXXX</td>   
                    <td> <form>
                            <input type="submit" value="Cerrar">
                         </form>
                    </td>
                </tr>
                <tr>
                    <td> XXXXXXX</td>
                    <td> XXXXXXX</td>                    
                    <td> XXXXXXX</td>                    
                    <td> XXXXXXX</td>
                    <td> <form>
                            <input type="submit" value="Cerrar">
                         </form>
                    </td>
                </tr>
                <tr>
                    <td> XXXXXXXXXXXXXXXXXXXXX</td>
                    <td> XXXXXXXXXXXXXXXXXXXXX</td>                    
                    <td> XXXXXXXXXXXXXXXXXXXXX</td>                    
                    <td> XXXXXXXXXXXXXXXXXXXXX</td>
                    <td> <form>
                            <input type="submit" value="Cerrar">
                         </form>
                    </td>
                </tr>
            </table>
            <div class="f">
                <form action="menup.jsp">
                    <input class="i "type="submit" value="Volver al Menú">
                </form>
            </div>
        </div>
    </body>
</html>
