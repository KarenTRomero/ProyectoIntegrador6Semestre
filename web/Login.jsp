<%-- 
    Document   : Login
    Created on : 26/10/2020, 04:57:13 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link href="css/L_Estilo.css" rel="stylesheet" type="text/css"/>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div id="cuadro">

            <form id="form1" action="Principal_Admin.jsp"> 
                <p id="titulo">INICIO DE SESIÓN</p>
                <center><img src="imagen/herramientas-de-aprendizaje.png" alt="" /></center>
                <div class="grupo"> 
                   <img src="imagen/estudiante.png" alt="" class="ima_estudiante"/>
                    <input type="text" name="txt_User" required><span class="barra"></span>
                    <label form="">Username</label>
                </div>
                <hr>
                <img src="imagen/lapiz.png" alt=""/>
                <input type="password" name="txt_Pass" placeholder="Password" />
                <hr>
                <input type="submit" name="btn_Ingresar" value="INGRESAR"/>  
                <br/><br/>
                <nav>
                    <a href="Principal_Clien.jsp">Volver</a>
                </nav>
            </form>
        </div>
    </body>
</html>
