<%-- 
    Document   : Listar_Usuarios
    Created on : 10/11/2020, 02:20:46 PM
    Author     : LAURA
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Usuario"%>
<%@page import="modelo.Usuario_DAO_CRUD"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LISTAR USUARIOS</title>
    </head>
    <body>
        <div>
            <h1>Usuarios</h1>
            <a href="Controlador_CRUD_Usuario?accion=add">Agregar Nuevo</a>
            <table border="1">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>NOMBRE</th>
                        <th>CORREO</th>
                        <th>TELEFONO</th>
                        <th>USUARIO</th>
                        <th>CONTRASEÑA</th>
                    </tr>
                </thead>
                <%
                Usuario_DAO_CRUD dao=new Usuario_DAO_CRUD();
                List<Usuario>list=dao.listar();
                Iterator<Usuario>iter=list.iterator();
                Usuario usu=null;
                while(iter.hasNext()){
                usu=iter.next();
               
                %>
                <tbody>
                    <tr>
                        <td><%= usu.getId_usuario()%></td>
                        <td><%= usu.getNombre()%></td>
                        <td><%= usu.getCorreo()%></td>
                        <td><%= usu.getTelefono()%></td>
                        <td><%= usu.getUser()%></td>
                        <td><%= usu.getPass()%></td>
                        <td>
                            <a>Editar</a>
                            <a>Eliminar</a>
                        </td>
                    </tr>
                    <% }%>
                </tbody>
            </table>

        </div>
    </body>
</html>
