<%-- 
    Document   : ingresarr
    Created on : 12-06-2018, 22:36:41
    Author     : lucas
--%>
<%@page import="java.sql.*"%>
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
            <% 
            if(request.getAttribute("msg")!=null){
                out.println(request.getAttribute("msg"));
            }
            %>
            <form action="ingresard.jsp">
                <div class="f"> 
                    <p> Gerencia: </p>  
                    <p> Depto: </p>
                    <p> Asignar a: </p> 
                    <p> Encargado: </p> 
                    <p> Requerimiento: </p>
                    <input class="i" type="submit" value="Guardar">
                </div>    
                <div class="f">
    <% 
        Class.forName("com.mysql.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ena","root","");
        String query = "SELECT n_gerencia FROM gerencia";
        String query2 = "SELECT n_asignacion FROM asignacion";
        Statement st = conn.createStatement();
    %>
                    <p> <select name="gerencia" onchange="showDepto(this.value)">
                            <option value="Seleccionar"> Seleccionar </option>
                            <% ResultSet rs = st.executeQuery(query);
                                while(rs.next()){
                                    out.print("<option value=\""+rs.getString("n_gerencia")+"\">"+rs.getString("n_gerencia")+"</option>");
                                }
                            %>
                        </select> </p>
                    <p> <select name="depto" id="depto">
                            <option> Seleccionar </option>
                            
                        </select> </p>
                    <p> <select name="asignar"  onchange="showEncargado(this.value)"> 
                            <option value="Seleccionar"> Seleccionar </option>
                            <% rs = st.executeQuery(query2);
                                while(rs.next()){
                                    out.print("<option value=\""+rs.getString("n_asignacion")+"\">"+rs.getString("n_asignacion")+"</option>");
                                }
                            %>
                        </select> </p>
                    <p> <select name="encargado" id="encargado"> 
                            <option> Seleccionar </option>
                        </select> </p>
                    <p> <textarea name="requerimiento" rows="10" cols="30"> Ingrese requerimientos 
                        </textarea> 
                    </p>    
                </div>
            </form>
            <div class="f">
                
            </div>
            <div class="f">
                <form action="menup.jsp">
                    <input class="i "type="submit" value="Volver al Menú">
                </form>
            </div>
        </div>
        <script>
            function showDepto(str) {
              var xhttp;    
              if (str === "Seleccionar") {
                document.getElementById("depto").innerHTML = "<option>Seleccionar</option>";
                return;
              }
              xhttp = new XMLHttpRequest();
              
              xhttp.onreadystatechange = function () {
                if((xhttp.readyState == 4) || (xhttp.status == 200)) {
                    document.getElementById("depto").innerHTML = xhttp.responseText;
                }else if(xhttp.status == 400){
                    alert("Error 400");
                }
             };
              xhttp.open("POST", "aj.jsp?id=1&q="+str, true);
              xhttp.send(null);
              
            }
            
            function showEncargado(str) {
              var xhttp;    
              if (str === "Seleccionar") {
                document.getElementById("encargado").innerHTML = "<option>Seleccion</option>";
                return;
              }
              xhttp = new XMLHttpRequest();
              
              xhttp.onreadystatechange = function () {
                if((xhttp.readyState == 4) || (xhttp.status == 200)) {
                    document.getElementById("encargado").innerHTML = xhttp.responseText;
                }else if(xhttp.status == 400){
                    alert("Error 400");
                }
             };
              xhttp.open("POST", "aj.jsp?id=2&q="+str, true);
              xhttp.send(null);
              
            }
        </script>
    </body>
</html>
