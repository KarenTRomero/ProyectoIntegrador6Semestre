<%-- 
    Document   : Agregar_Usuarios
    Created on : 10/11/2020, 02:21:23 PM
    Author     : LAURA
--%>

<%@page import="modelo.Encriptar" %>
<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CREAR USUARIOS</title>
        <link href="css/Estilo_Agregar_Usu.css" rel="stylesheet" type="text/css"/>
        <%-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">--%>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">

    </head>
    <body>
        <div class="container">
            <div class="contact-box">
                <div class="left">
                    <a href="Crud_Usuario.jsp" class="volver"><i class="fa fa-reply" aria-hidden="true"></i> Volver</a>
                    <img src="imagen/agregar_niño.jpg" alt="" class="img"/>
                </div>
                <div class="right">
                    <h2>Registro de usuario</h2>
                    <form action="Agregar_Usuarios.jsp" method="post">
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="txt_Nombre" placeholder="Nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Correo:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" name="txt_Correo" aria-describedby="emailHelp" placeholder="email@example.com" required>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Telefono:</label>
                            <input type="text" class="form-control" id="telefono" name="txt_Telefono" placeholder="Telefono" required>
                        </div>
                        <div class="form-group">
                            <label for="usuario">Usuario:</label>
                            <input type="text" class="form-control" id="usuario" name="txt_Usuario" placeholder="UserName" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña:</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="txt_Contra" placeholder="Password" required>
                        </div>
                        <div class="form-group">

                            <label for="exampleInputPassword1">Repita su contraseña:</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="txt_Contra2" placeholder="Password" required>
                        </div>
                       

                            <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>


                    </form>
                </div>
            </div>
        </div>
        <%

            if (request.getParameter("enviar") != null) {
                String nom = request.getParameter("txt_Nombre");
                String correo = request.getParameter("txt_Correo");
                String tel = request.getParameter("txt_Telefono");
                String user = request.getParameter("txt_Usuario");
                String pass = request.getParameter("txt_Contra");
                String pass2 = request.getParameter("txt_Contra2");
                if (pass.equals(pass2)) {
                    try {
                        Connection con = null;
                        Statement st = null;
                        Encriptar enc = new Encriptar();
                        Class.forName("com.mysql.jdbc.Driver");
                        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                        st = con.createStatement();
                        st.executeUpdate("INSERT INTO usuario(nombre,correo,telefono,user,pass) VALUES('" + nom + "','" + correo + "','" + tel + "','" + user + "','" + enc.getMD5(pass) + "');");
                        request.getRequestDispatcher("Crud_Usuario.jsp").forward(request, response);
                    } catch (Exception e) {
                        out.print(e);
                    }

                } else {
                    out.print("Las contraseñas no coinciden");
                }
            }
        %>
    </body>
</html>
