<%-- 
    Document   : aj
    Created on : 15-06-2018, 1:17:13
    Author     : lucas
--%>
<%@page import="java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ena","root","");
            Statement st = conn.createStatement();
            
            if(request.getParameter("id").equals("1")){
                String query = "SELECT depto.n_depto "
                              + "FROM gerencia "
                              + "INNER JOIN gerencia_depto ON gerencia.id_gerencia = gerencia_depto.id_gerencia "
                              + "INNER JOIN depto ON gerencia_depto.id_depto = depto.id_depto "
                              + "WHERE gerencia.n_gerencia = '"+request.getParameter("q")+"'";
                ResultSet rs = st.executeQuery(query);
                String aj = "<option> Seleccionar </option>";
                while(rs.next()){
                    aj=aj+"<option>"+rs.getString("depto.n_depto")+"</option>";

                }
                out.print(aj);
            }
            
            if(request.getParameter("id").equals("2")){
                String query = "SELECT encargado.n_encargado FROM asignacion INNER JOIN asignacion_encargado ON asignacion.id_asignacion = asignacion_encargado.id_asignacion INNER JOIN encargado ON asignacion_encargado.id_encargado = encargado.id_encargado WHERE asignacion.n_asignacion = '"+request.getParameter("q")+"'";
                ResultSet rs = st.executeQuery(query);
                String aj = "<option> Seleccionar </option>";
                while(rs.next()){
                    aj=aj+"<option>"+rs.getString("encargado.n_encargado")+"</option>";

                }
                out.print(aj);
            }
            
            if(request.getParameter("id").equals("3")){
                String query = "SELECT depto.n_depto "
                              + "FROM gerencia "
                              + "INNER JOIN gerencia_depto ON gerencia.id_gerencia = gerencia_depto.id_gerencia "
                              + "INNER JOIN depto ON gerencia_depto.id_depto = depto.id_depto "
                              + "WHERE gerencia.n_gerencia = '"+request.getParameter("q")+"'";
                ResultSet rs = st.executeQuery(query);
                String aj = "<option> Todo </option>";
                while(rs.next()){
                    aj=aj+"<option>"+rs.getString("depto.n_depto")+"</option>";

                }
                out.print(aj);
            }
        %>
    </body>
</html>
