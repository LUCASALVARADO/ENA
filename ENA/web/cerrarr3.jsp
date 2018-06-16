<%-- 
    Document   : cerrarr3
    Created on : 15-06-2018, 22:16:21
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
            String query2 = "UPDATE requerimientos SET estado = 2  WHERE id_requerimiento ='"+request.getParameter("id")+"'";
            Statement st2 = conn.createStatement();
            st2.executeUpdate(query2);
            RequestDispatcher rd = request.getRequestDispatcher("cerrarr.jsp");
            request.setAttribute("msg4","Operacion exitosa");
            rd.forward(request, response);
          response.sendRedirect("cerrarr.jsp");
        %>
    </body>
</html>
