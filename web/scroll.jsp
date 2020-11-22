<%-- 
    Document   : scroll
    Created on : 31/10/2020, 12:04:01 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Smooth Scroll</title>
        <link href="css/scroll_Estilo.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <nav>
                <div class="logo">
                    <img src="imagen/logito.jpeg" alt="">
                </div>
        <div class="icono" id="icono">
            <span>&#9776;</span>
        </div>
                <div class="enlaces uno" id="enlaces">
                    <a href="#" class="active" >Inicio</a>
                    <a href="#">Login</a> 
                    <a href="#">Salir</a> 
                </div>
                </nav>
            </header>
        <header>
        <section id="sec1">
            <div class="contenedor-texto">
                <h2>Ranking Suma</h2>
                <p>Clasificación de mayor a menor</p>
                <a href="" class="cta">Ingresar</a>
                
            </div>
            <img src="imagen/daenerys_targaryen.svg" alt="">
        </section>
        
            <div class="modal-container">
                <div class="modal modal-close">
                    <p class="close">X</p>
                    <img src="imagen/estudiantes.svg" alt="">
                    <div class="modal-textos">
                        <h2>Suma</h2>
                    </div>
                </div>
            </div>
        <section id="sec2">
          <div class="contenedor-texto">
                <h2>Ranking Resta</h2>
                <p>Clasificación de mayor a menor</p>
                <a href="">Ingresar</a>
            </div>
            <img src="imagen/tyrion_lannister.svg" alt="">  
        </section>
        
        <section id="sec3">
            <div class="contenedor-texto">
                <h2>Ranking Multiplicación</h2>
                <p>Clasificación de mayor a menor</p>
                <a href="">Ingresar</a>
            </div>
            <img src="imagen/john_snow.svg" alt="">
        </section>
        
        <section id="sec4">
            <div class="contenedor-texto">
                <h2>Ranking División</h2>
                <p>Clasificación de mayor a menor</p>
                <a href="">Ingresar</a>
            </div>
            <img src="imagen/bran_stark.svg" alt="">
        </section>
            </header>
        <script src="Scroll.js"></script>
    </body>
</html>
