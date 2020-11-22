<%-- 
    Document   : Login
    Created on : 26/10/2020, 04:57:13 PM
    Author     : LAURA
--%>
<%@page import="java.sql.*"%>
<%@page import="modelo.Encriptar" %>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/L_Estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@300;400;700&display=swap" rel="stylesheet">
       <%--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">--%>
    </head>
    <body>
        <main class="contenedor" >
            <form action="Login.jsp" method="post">
                <div class="contenedor-textos">

                    <h1>INICIO DE SESIÓN</h1>
                    <div class="grupo">
                        <input type="text" name="txt_User" id="name" required><span class="barra"></span>
                        <label for="">Username</label>
                    </div>
                    <div class="grupo">
                        <input type="password" name="txt_Pass" id="name" required><span class="barra"></span>
                        <label for="">Password</label>
                    </div>
                    
                    <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;
                    Encriptar enc=new Encriptar();
                    if (request.getParameter("accion") != null) {
                        String user = request.getParameter("txt_User");
                        String pass = request.getParameter("txt_Pass");
                        HttpSession sesion = request.getSession();
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                            st = con.createStatement();
                            rs = st.executeQuery("Select * from usuario where user='" + user + "' and pass='" + enc.getMD5(pass) + "' ;");
                            while (rs.next()) {
                                sesion.setAttribute("logueado", "1");
                                sesion.setAttribute("user", rs.getString("user"));
                                sesion.setAttribute("id", rs.getString("id_usuario"));
                                response.sendRedirect("Principal_Admin.jsp");
                            }
                            out.print(" <div class=\"alert alert-danger\" role=\"alert\">usuario no valido</div>");
                        } catch (Exception e) {
                            out.print(e);

                        }
                    }
                %>

                    <button type="submit" name="accion" value="Ingresar">Ingresar</button>
                    <nav>
                        <a href="Principal_Clien.jsp">Volver</a>
                    </nav>


                </div>
                
            </form>

            <div class="contenedor-imagen">
                <img src="imagen/rocket_launch_ 1.svg" alt="" class="img">
            </div>
            <div>
                <img src="imagen/Vector 1.svg" alt="" class="wave">
            </div>

            <div class="burbujas">
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
                <div class="burbuja"></div>
            </div>

        </main>
    </body>
</html>
