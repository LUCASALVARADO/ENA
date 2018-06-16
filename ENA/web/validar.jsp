<%-- 
    Document   : validar
    Created on : 14-06-2018, 20:52:33
    Author     : lucas
--%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            
            try{
                String user = request.getParameter("user");
                String pass = request.getParameter("pass");
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ena","root","");
                String query = "SELECT n_usuario,contraseña "
                             + "FROM usuario "
                             + "WHERE n_usuario = '"+user+"'AND contraseña = '"+pass+"'";
                Statement st = conn.createStatement();
                ResultSet rs = st.executeQuery(query);
                
                if (!rs.next()){
                    RequestDispatcher rd = request.getRequestDispatcher("autentificacion.jsp");
                    request.setAttribute("msg","Datos Incorrectos");
                    rd.forward(request, response);
                }else{
                    response.sendRedirect("menup.jsp");
                }
                
            }catch(Exception e){
                
            }
        %>
    </body>
</html>
