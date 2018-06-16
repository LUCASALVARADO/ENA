<%-- 
    Document   : consultarr2
    Created on : 15-06-2018, 18:51:22
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
            
            if(!gerencia.equals("Todo")){
                gerencia = "gerencia.n_gerencia = '"+gerencia+"'";
            }
            
            if(!depto.equals("Todo")){
                depto = "depto.n_depto = '"+depto+"'";
            }
            
            if(!asignacion.equals("Todo")){
                asignacion = "asignacion.n_asignacion = '"+asignacion+"'";
            }
            
            String where = "WHERE "+gerencia+" AND "+depto+" AND "+asignacion;
            
            if(gerencia.equals("Todo")&&!depto.equals("Todo")&&!asignacion.equals("Todo")){
                where = "WHERE "+depto+" AND "+asignacion;
            }
            
            if(!gerencia.equals("Todo")&&!depto.equals("Todo")&&asignacion.equals("Todo")){
                where = "WHERE "+gerencia+" AND "+depto+"";
            }
            
            if(!gerencia.equals("Todo")&&depto.equals("Todo")&&!asignacion.equals("Todo")){
                where = "WHERE "+gerencia+" AND "+asignacion+"";
            }
            
            if(!gerencia.equals("Todo")&&depto.equals("Todo")&&asignacion.equals("Todo")){
                where = "WHERE "+gerencia+"";
            }
            
            if(gerencia.equals("Todo")&&!depto.equals("Todo")&&asignacion.equals("Todo")){
                where = "WHERE "+depto+"";
            }
            
            if(gerencia.equals("Todo")&&depto.equals("Todo")&&!asignacion.equals("Todo")){
                where = "WHERE "+asignacion+"";
            }
            
            if(gerencia.equals("Todo")&&depto.equals("Todo")&&asignacion.equals("Todo")){
                where = "";
            }
            
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ena","root","");
            Statement st = conn.createStatement();
            String query = "select requerimientos.id_requerimiento,gerencia.n_gerencia,depto.n_depto,asignacion.n_asignacion,requerimientos.descripcion " 
                            +"from requerimientos "
                            +"inner join gerencia on requerimientos.gerencia = gerencia.id_gerencia "
                            +"inner join gerencia_depto on gerencia_depto.id_gerencia = gerencia.id_gerencia "
                            +"inner join depto on gerencia_depto.id_depto = depto.id_depto "
                            +"inner join asignacion on requerimientos.asignacion = asignacion.id_asignacion "
                            +where
                            +"group by requerimientos.id_requerimiento";
            ResultSet rs = st.executeQuery(query);
            if(!rs.next()){
                RequestDispatcher rd = request.getRequestDispatcher("consultarr.jsp");
                request.setAttribute("msg2","<tr><td>No existen datos</td><td>No existen datos</td><td>No existen datos</td><td>No existen datos</td></tr>");
                rd.forward(request, response);
            }
            String str = "";
            while(rs.next()){
                if(str.equals("")){
                    str="<tr><td>"+rs.getString("gerencia.n_gerencia")+"</td>"
                   +"<td>"+rs.getString("depto.n_depto")+"</td>"
                   +"<td>"+rs.getString("asignacion.n_asignacion")+"</td>"
                   +"<td>"+rs.getString("requerimientos.descripcion")+"</td></tr>";
                }else{
                str=str+"<tr><td>"+rs.getString("gerencia.n_gerencia")+"</td>"
                   +"<td>"+rs.getString("depto.n_depto")+"</td>"
                   +"<td>"+rs.getString("asignacion.n_asignacion")+"</td>"
                   +"<td>"+rs.getString("requerimientos.descripcion")+"</td></tr>";
                }
            }
            RequestDispatcher rd = request.getRequestDispatcher("consultarr.jsp");
            request.setAttribute("msg2",str);
            rd.forward(request, response);
        %>    
    </body>
</html>
