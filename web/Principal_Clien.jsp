<%-- 
    Document   : index.jsp
    Created on : 27/10/2020, 11:31:02 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MathMind</title>
        <link href="css/PrinciC_Estilo.css" rel="stylesheet" te="text/>css"/>   
        <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
     <link rel="icon" type="image/jpg" href="imagen/logo-icono.png"
    </head>
    <body>
       <header>
            <nav>
                <a href="Login.jsp">Iniciar Sesion</a>
            </nav>
            <section class="textos-header">
                <h1>MathMind</h1>
            </section>
            <div class="wave" style="height: 150px; overflow: hidden;" >
                <svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;">
                <path d="M0.00,49.98 C180.32,209.70 318.85,-98.19 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #ffffff">
                </path></svg></div>
        </header>
        <main>
            <section class="contenedor sobre nosotros">
                <h2 class="titulo">Sobre Nosotros</h2>
                <div class="contenedor-sobre-nosotros">
                    <img src="imagen/logo.png" alt="" class="imagen-nosotros">
                    <p>Mathmind es un aplicativo web diseñado para facilitar los procesos de aprendizaje en el área de matemáticas para niños entre cinco y nueve años, con la finalidad de reforzar sus conocimientos por medio de herramientas interactivas.</p>
                </div>
            </section>
            <section class="Categoria">
                <h2 class="titulo">Categoria</h2>
            </section>
            <section class="Temas">
                <div class="contenedor">
                    <div class="galeria-port">
                        <div class="imagen-port">
                            <img src="imagen/sumima.jpeg" alt="">
                            <div class="hover-galeria">
                                <a href="Suma.jsp"><img src="imagen/mas.png"></a>
                                <p>Suma</p>
                            </div>
                        </div>
                        <div class="imagen-port">
                            <img src="imagen/restaima.jpeg" alt="">
                            <div class="hover-galeria">
                                <a href="Resta.jsp"><img src="imagen/menos.png"></a>
                                <p>Resta</p>
                            </div>
                        </div>
                        <div class="imagen-port">
                            <img src="imagen/multiima.jpeg" alt="">
                            <div class="hover-galeria">
                                <a href="Multiplicacion.jsp"><img src="imagen/cancelar.png"></a>
                                <p>Multiplicacion</p>
                            </div>
                        </div>
                        <div class="imagen-port">
                            <img src="imagen/diviima.jpeg" alt="">
                            <div class="hover-galeria">
                                <a href="Division.jsp"><img src="imagen/divi.png"></a>
                                <p>Division</p>
                            </div>
                        </div>
                    </div>  
                </div>

            </section>
        </main> 
    </body>
</html>
