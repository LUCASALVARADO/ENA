<%-- 
    Document   : cerrarr
    Created on : 12-06-2018, 22:37:04
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
            
            
            #bf {
                margin-top: 60px;
            }
            
            
        </style>
    </head>
    <body>
        <div class="m" id="m2">
            <h1> Cerrar Requerimientos </h1>
            <% 
            if(request.getAttribute("msg4")!=null){
                out.println(request.getAttribute("msg4"));
            }
            %>
            <form action="cerrarr2.jsp">
                <div class="f"> 
                    <p> Gerencia: </p>  
                    <p> Depto: </p>
                    <p> Asignado a: </p> 
                    
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
                            <option> Todo </option>
                            <% ResultSet rs = st.executeQuery(query);
                                while(rs.next()){
                                    out.print("<option value=\""+rs.getString("n_gerencia")+"\">"+rs.getString("n_gerencia")+"</option>");
                                }
                            %>                            
                        </select> </p>
                    <p> <select name="depto" id="depto">
                            <option> Todo </option>
                        </select> </p>
                    <p> <select name="asignar"> 
                            <option> Todo </option>
                            <% rs = st.executeQuery(query2);
                                while(rs.next()){
                                    out.print("<option value=\""+rs.getString("n_asignacion")+"\">"+rs.getString("n_asignacion")+"</option>");
                                }
                            %>                            
                        </select> </p>
                        <input type="hidden" value="cerrar" name="cerrar">    
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
                    <% 
                        if(request.getAttribute("msg3")!=null){
                            out.println(request.getAttribute("msg3"));
                        }
                    %>                 
            </table>
            <div class="f">
                <form action="menup.jsp">
                    <input class="i "type="submit" value="Volver al Menú">
                </form>
            </div>
        </div>
        <script>
            function showDepto(str) {
              var xhttp;    
              if (str === "Todo") {
                document.getElementById("depto").innerHTML = "<option>Todo</option>";
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
              xhttp.open("POST", "aj.jsp?id=3&q="+str, true);
              xhttp.send(null);
              
            }
        </script>
    </body>
</html>
