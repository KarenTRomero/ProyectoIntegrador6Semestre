<%-- 
    Document   : scroll
    Created on : 31/10/2020, 12:04:01 PM
    Author     : LAURA
--%>
<%@page import="javax.servlet.jsp.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smooth Scroll</title>
        <link href="css/scroll_Estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link rel="icon" type="image/jpg" href="imagen/logo-icono.png"
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">
                    <h2 class="text-center" id="titulo"><img src="imagen/cohete.png" style="vertical-align: middle" alt=""/> MATHMIND</h2>
                </div>
                <div class="icono" id="icono">
                    <span>&#9776;</span>
                </div>
                <div class="enlaces uno" id="enlaces">
                    <a href="#"></a>
                    <a href="Principal_Admin.jsp" class="active" >Inicio</a>
                    <a href="Login.jsp">Login</a> 
                    
                   
                </div>
            </nav>
        </header>
        <header>
            <section id="sec1">
                <div class="contenedor-texto">
                    <h2>Suma</h2>
                    <p>Tabla de sugerencias de los usuarios.</p>
                    <a href="Vista_Suma.jsp" name="btn_Sugerencias" >Ingresar</a>
                    
                               
                 
                     
                   
                </div>
                    <img src="imagen/daenerys_targaryen.svg" alt="">
                    </section>


                    <section id="sec2">
                        <div class="contenedor-texto">
                            <h2>Resta</h2>
                            <p>Tabla de sugerencias de los usuarios.</p>
                            <a href="Vista_Resta.jsp" name="btn_Sugerencias" value="Resta" >Ingresar</a>
                            
                        </div>
                        <img src="imagen/tyrion_lannister.svg" alt="">  
                   
                    </section>

                    <section id="sec3">
                        <div class="contenedor-texto">
                            <h2>Multiplicación</h2>
                            <p>Tabla de sugerencias de los usuarios.</p>
                            <a href="Vista_Multi.jsp" name="btn_Sugerencias" value="Multi" >Ingresar</a>
                        </div>
                        <img src="imagen/john_snow.svg" alt="">
                    </section>

                    <section id="sec4">
                        <div class="contenedor-texto">
                            <h2>División</h2>
                            <p>Tabla de sugerencias de los usuarios.</p>
                            <a href="Vista_Divi.jsp" name="btn_Sugerencias" value="Divi" >Ingresar</a>
                        </div>
                        <img src="imagen/bran_stark.svg" alt="">
                    </section>
                    </header>
                  
                    </body>
                    </html>
