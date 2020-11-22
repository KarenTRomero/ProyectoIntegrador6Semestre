<%-- 
    Document   : Principal_Admin
    Created on : 26/10/2020, 04:52:48 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/Admin_Estilo.css" rel="stylesheet" type="text/css"/>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Dosis:wght@600&display=swap" rel="stylesheet">
        
         <title>Principal Admin</title>
       <link rel="icon" type="image/jpg" href="imagen/logo-icono.png"
    </head>
    <body>
        <%
        HttpSession sesion=request.getSession();
        if(sesion.getAttribute("logueado")==null ||sesion.getAttribute("logueado").equals("0")){
        response.sendRedirect("Login.jsp");
        }
        %>
         <div class="hero">
            <div class="navbar">
                <img src="imagen/logo.png" alt=""/>

                <ul>
                    
                    <li><a href="#Footer">Contact</a></li>
                </ul>

                <div class="navbar-icons">
                    <ul> 
                        <li><a href="Login.jsp" >Login<img src="imagen/banquero.png" alt=""/></a></li>
                            
                        <li><a href="Principal_Clien.jsp" >Cliente<img src="imagen/estudiantee.png" alt=""/></a></li>
                        
                    </ul>
                </div>
            </div>
            <div class="banner">
                <div class="left-column">
                    <h1>MATH<span>MIND</span></h1>
                    <h3><span>¡Diviertete </span>Aprendiendo!</h3>
                    <p>Mathmind es un aplicativo web diseñado para facilitar
                        los procesos de <br>aprendizaje en el área de matemáticas 
                        para niños entre cinco y nueve años,<br>con la finalidad 
                        de reforzar sus conocimientos por medio de herramientas 
                        interactivas.
                    </p>
                    <div class="btn">
                        <a href="Crud_Usuario.jsp" ><button type="button" class="primary-btn">CRUD ADMIN</button></a>
                        <a href="Scroll.jsp" ><button type="button">CATEGORIAS</button></a>
                    </div>
                </div>
                <div class="right-column">
                    <img src="imagen/imagenAdmin.png" alt=""/>
                </div>
            </div>
        </div>

        <footer>
            <div class="main-content" id="Footer">
                <div class="left box">
                    <h2>MATHMIND</h2>
                    <div class="content">
                        <p>¡¡Diviertete Aprendiendo!!</p>
                    </div>
                </div>
                <div class="rigt box">
                    <h2>Contactanos</h2>
                    <div class="content">
                        <div class="place">
                            <img src="imagen/ubicacion.png">
                            <span class="text">Fusagasugá, Colombia</span>
                        </div>
                        <div class="phone">
                            <img src="imagen/telefono.png">
                            <span class="text">+57 320-879-1391</span>
                        </div>
                        <div class="email">
                            <img src="imagen/mensaje.png">
                            <span class="text">Mathmind@gmail.com</span>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>
