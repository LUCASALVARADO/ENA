<%-- 
    Document   : ingresard
    Created on : 15-06-2018, 11:46:18
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
            String gerencia = request.getParameter("gerencia");
            String depto = request.getParameter("depto");
            String asignacion = request.getParameter("asignar");
            String encargado = request.getParameter("encargado");
            String descripcion = request.getParameter("requerimiento");
            
            if(descripcion == null){
                descripcion = "";
            }
            
            if(gerencia.equals("Seleccionar")||depto.equals("Seleccionar")
                ||asignacion.equals("Seleccionar")||encargado.equals("Seleccionar")||descripcion.equals("")){
                    
                RequestDispatcher rd = request.getRequestDispatcher("ingresarr.jsp");
                request.setAttribute("msg","Faltan Datos");
                rd.forward(request, response);
            }
            
            if(gerencia.equals("Clientes")){
                gerencia = "1";
            }else{
                gerencia = "2";
            }
            if(depto.equals("Servicio al Cliente")){
                depto = "1";
            }
            if(depto.equals("Postventa")){
                depto = "2";
            }
            if(depto.equals("Ventas")){
                depto = "3";
            }
            if(depto.equals("Productos")){
                depto = "4";
            }
            
            if(asignacion.equals("Abastecimiento")){
                asignacion = "1";
            }else{
                asignacion = "2";
            }
            
            if(encargado.equals("Alejandro Fuentes")){
                encargado = "1";
            }
            if(encargado.equals("Juan Valdez")){
                encargado = "2";
            }
            if(encargado.equals("Pedro Correa")){
                encargado = "3";
            }
            if(encargado.equals("Juan Fuentes")){
                encargado = "4";
            }
            if(encargado.equals("Pedro Valdez")){
                encargado = "5";
            }
            if(encargado.equals("Alejandro Correa")){
                encargado = "6";
            }
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ena","root","");
            Statement st = conn.createStatement();
            String query = "INSERT INTO requerimientos (gerencia,depto,asignacion,encargado,descripcion,estado,usuario)"+
                           "VALUES (?,?,?,?,?,?,?)";
            
            PreparedStatement pt = conn.prepareStatement(query);
            pt.setString(1, gerencia);
            pt.setString(2, depto);
            pt.setString(3, asignacion);
            pt.setString(4, encargado);
            pt.setString(5, descripcion);
            pt.setString(6, "1");
            pt.setString(7, "1");
            
            pt.executeUpdate();
            pt.close();
            conn.close();
            RequestDispatcher rd = request.getRequestDispatcher("ingresarr.jsp");
                request.setAttribute("msg","Datos ingresados correctamente");
                rd.forward(request, response);
        %>
    </body>
</html>
