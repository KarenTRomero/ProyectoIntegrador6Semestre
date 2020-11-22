<%-- 
    Document   : Editar_Usuarios
    Created on : 10/11/2020, 02:21:44 PM
    Author     : LAURA
--%>

<%@page import="modelo.Encriptar"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MODIFICAR USUARIOS</title>
        <link href="css/Estilo_Editar_Usu.css" rel="stylesheet" type="text/css"/>
       <%-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">--%>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>

        <%

            Connection con = null;
            PreparedStatement ps;
            ResultSet rs;
            String id = request.getParameter("id");
            Class.forName("com.mysql.jdbc.Driver");
            con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
            ps = con.prepareStatement("SELECT * FROM usuario where id_usuario="+ id);
            rs = ps.executeQuery();
            while (rs.next()) {


        %>
        <div class="container">
            <div class="contact-box">
                <div class="left">
                    <a href="Crud_Usuario.jsp" class="volver"><i class="fa fa-reply" aria-hidden="true"></i> Volver</a>
                    <img src="imagen/editar_niño.jpg" alt=""/>
                </div>
                <div class="right">
                    <h2>Modificar usuario</h2>
                    
                        <div class="form-group">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" value="<%= rs.getString("nombre")%>" name="txt_Nombre" placeholder="Nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Correo:</label>
                            <input type="email" class="form-control" id="exampleInputEmail1" value="<%= rs.getString("correo")%>" name="txt_Correo" aria-describedby="emailHelp" placeholder="email@example.com" required>
                        </div>
                        <div class="form-group">
                            <label for="telefono">Telefono:</label>
                            <input type="text" class="form-control" id="telefono" value="<%= rs.getString("telefono")%>" name="txt_Telefono" placeholder="Telefono" required>
                        </div>
                        <div class="form-group">
                            <label for="usuario">Usuario:</label>
                            <input type="text" class="form-control" id="usuario" value="<%= rs.getString("user")%>" name="txt_Usuario" placeholder="UserName" required>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña:</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="txt_Contra" value="<%= rs.getString("pass")%>" placeholder="Password" required>
                        </div>

                        <div class="form-group">
                            <label for="exampleInputPassword1">Repita su contraseña:</label>
                            <input type="password" class="form-control" id="exampleInputPassword1" name="txt_Contra2" value="<%= rs.getString("pass")%>" placeholder="Password" required>
                        </div>
                       
                        <button type="submit" name="enviar" class="btn btn-primary">Guardar <i class="fa fa-floppy-o" aria-hidden="true"></i></button>
                        <input type="hidden" name="id" value="<%= rs.getInt("id_usuario")%>">
                    </form>
                </div>
            </div>
        </div>
        <%}%>

    </body>
</html>
<%
    String nom = request.getParameter("txt_Nombre");
    String correo = request.getParameter("txt_Correo");
    String tel = request.getParameter("txt_Telefono");
    String user = request.getParameter("txt_Usuario");
    String pass = request.getParameter("txt_Contra");
    String pass2 = request.getParameter("txt_Contra2");
    if (nom != null && correo != null && tel != null && user != null && pass != null) {
if(pass.equals(pass2)){
        try {
            Encriptar enc=new Encriptar();
            ps=con.prepareStatement("UPDATE usuario SET nombre='" + nom + "',correo='" + correo + "',telefono='" + tel + "',user='" + user + "',pass='"+ enc.getMD5(pass) +"' WHERE id_usuario='" + id + "';");
            ps.executeUpdate();
          response.sendRedirect("Crud_Usuario.jsp");
        } catch (Exception e) {
            out.print(e);
        }
        }else{
            out.print("Las contraseñas no coinciden");
            }
    }
%>
