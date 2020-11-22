<%-- 
    Document   : Crud_Usuario
    Created on : 7/11/2020, 01:38:56 PM
    Author     : LAURA
--%>


<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CRUD DE USUARIOS </title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/Estilo_Crud_Usu.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <h2 class="text-center" id="titulo"><img src="imagen/cohete.png" alt=""/> MATHMIND</h2>
        <a href="Principal_Admin.jsp" class="volver"><i class="fa fa-reply" aria-hidden="true"></i> Volver</a>
       
        <%
            Connection con = null;
            Statement st = null;
            ResultSet rs = null;
        %>
        <div class="container mt-5">
            <div class="row mt-2">
                <div class="col-sm">
                    <form  action="Crud_Usuario.jsp" method="get">
                       
                        <table  class="table table-hover table-light" >
                            <thead class="thead-dark">
                                <tr>

                                    
                                    <th scope="col" class="text-center">
                                        <input type="text" name="txt_Buscar" class="form-control" placeholder="Buscar"/>
                                    </th>
                                    <th scope="col" class="text-center">
                                        <input type="submit" value="Buscar" name="btn_Buscar" class="form-control" btn btn-primary/>
                                    </th>
                                    <th scope="col" colspan="3" class="text-center"></th>
                                    <%
                                   
                                    String nombuscar=request.getParameter("txt_Buscar");
                                    try {
                                    if(nombuscar!=null){
                                          con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                                        st=con.createStatement();
                                    rs=st.executeQuery("SELECT * FROM usuario where id_usuario LIKE"+"'%"+nombuscar+"%' or nombre LIKE"+"'%"+nombuscar+"%' or correo LIKE"+"'%"+nombuscar+"%' or telefono LIKE"+"'%"+nombuscar+"%' or user LIKE"+"'%"+nombuscar+"%'");
                                    
                                    }else{
                                    System.err.println("Error");
                                    }
                                     } catch (Exception e) {
                                         out.print(e);
                                        }
                                    %>
                                    <th></th>
                                    <th scope="col" class="text-center">
                                        <a  href="Agregar_Usuarios.jsp"><i class="fa fa-user-plus fa-2x" aria-hidden="true"></i></a>
                                    </th>
                                </tr>
                                <tr>
                                    <th scope="col" class="text-center">ID</th>
                                    <th scope="col" class="text-center">NOMBRE</th>
                                    <th scope="col" class="text-center">CORREO</th>
                                    <th scope="col" class="text-center">TELÉFONO</th>
                                    <th scope="col" class="text-center">USUARIO</th>
                                    <th scope="col" class="text-center">CONTRASEÑA</th>
                                    <th scope="col" class="text-center">ACCIONES</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    try {

                                        Class.forName("com.mysql.jdbc.Driver");
                                        con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                                        st = con.createStatement();
                                        String query="SELECT * FROM `usuario`";
                                        String where=" where 1=1";
                                        String nombre=request.getParameter("nombre");
                                        rs = st.executeQuery(query);
                                        while (rs.next()) {
                                %>
                                <tr>
                                    <th scope="row" class="text-center"><%= rs.getString(1)%></th>
                                    <td class="text-center"><%= rs.getString(2)%></td>
                                    <td class="text-center"><%= rs.getString(3)%></td>
                                    <td class="text-center"><%= rs.getString(4)%></td>
                                    <td class="text-center"><%= rs.getString(5)%></td>
                                    <td class="text-center"><%= rs.getString(6)%></td>
                                    <td class="text-center">
                                        <a href="Editar_Usuarios.jsp?id=<%= rs.getString(1)%>&nombre=<%= rs.getString(2)%>&correo=<%= rs.getString(3)%>&telefono=<%= rs.getString(4)%>&user=<%= rs.getString(5)%>&pass=<%= rs.getString(6)%>" ><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></a>
                                        <a href="Eliminar_Usuarios.jsp?id=<%= rs.getString(1)%>" class="ml-3"> <i class="fa fa-trash fa-lg" aria-hidden="true"></i></a>
                                    </td>
                                </tr>

                                <%
                                        }
                                    } catch (Exception e) {
                                        out.print("Error mysql" + e);

                                    }
                                %>

                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
