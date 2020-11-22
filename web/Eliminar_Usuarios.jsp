<%-- 
    Document   : Eliminar_Usuarios
    Created on : 10/11/2020, 11:27:29 PM
    Author     : LAURA
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Connection con = null;
            Statement st = null;
            try {

                Class.forName("com.mysql.jdbc.Driver");
                con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                st = con.createStatement();
                st.executeUpdate("DELETE FROM usuario where id_usuario='"+request.getParameter("id") +"';");
                 request.getRequestDispatcher("Crud_Usuario.jsp").forward(request, response);
            } catch (Exception e) {
                out.print(e);
            }

        %>
    </body>
</html>
