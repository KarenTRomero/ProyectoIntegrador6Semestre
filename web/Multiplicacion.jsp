<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Multiplicación</title>
        <link href="css/EstiloMulti.css" rel="stylesheet" te="text/>css"/>  
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
        <link rel="icon" type="image/jpg" href="imagen/logo-icono.png"
    </head>
    <body>
        <header>
            <div class="textos">
                <h1 class="titulo">LAS MULTIPLICACIONES</h1>
                <h3 class="sibtitulo"></h3>
                <a href="Principal_Clien.jsp" class="boton">HOME</a>
            </div>
            <div class="sesgoabajo"></div> 
        </header>
        <main>
            <section class="Acerca-de">
                <div class="contenedor">
                    <h2 class="sobre-nosotros">Las Multiplicaciones</h2>
                    <h3 class="Slogan">La multiplicación es una operación matemática de aritmética elemental</h3>
                    <p class="parrafo"> Para la matemática, la multiplicación consiste en una 
                        operación de composición que requiere sumar reiteradamente un número 
                        de acuerdo a la cantidad de veces indicada por otro.
                        Se representa con el signo(X).
                        Los números que intervienen en la multiplicación reciben el nombre de factores, 
                        mientras que el resultado se denomina producto. </p>
                </div>
            </section>
            <section class="galeria">
                <div class="sesgoarriba"></div> 
                <div class="imagenes">
                    <img src="imagen/imagen6.png" alt="">
                </div>
                <div class="imagenes">
                    <img src="imagen/imagen5.jpg" alt="">
                </div>
                <div class="imagenes">
                    <img src="imagen/imagen4.jpg" alt="">
                    <div class="encima">
                        <h2>MULTIPLICACIÓN</h2>
                        <div></div>
                    </div>
                </div>
                <div class="imagenes">
                    <img src="imagen/Multiplicación.jpg" alt=""/>

                </div>
                <div class="imagenes">
                    <img src="imagen/imagen1_1.jpg" alt="">
                </div>
                <div class="sesgoabajo"></div>
            </section>
            <section class="servicios contenedor" id="servicio">
                <h2 class="subtitulo">¿Cómo hacer multiplicaciones?</h2>
                <div class="contenedor-servicio">
                    <img src="imagen/ejemplomulti.png" alt=""/>
                    <div class="checklist-servicio">
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">1</span>Paso1</h3>
                            <p>Se multiplica el multiplicador (número de abajo, el 3) por el
                                multiplicando (número de arriba, el 5).</p>
                        </div>
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">2</span>Paso2</h3>
                            <p>Las unidades del producto se escriben debajo de la raya, en vertical con las unidades del multiplicando (o sea, debajo del 3).</p>
                        </div>
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">3</span>Paso3</h3>
                            <p>El resultado de multiplicar 5 por 3 es 15.
                                Así como se muestra en la imagen.</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="galeria">
                <div class="sesgoarriba"></div> 
                <div class="imagenes">
                    <img src="imagen/imagen6.png" alt="">
                </div>
                <div class="imagenes">
                    <img src="imagen/imagen5.jpg" alt="">
                </div>
                <div class="imagenes">
                    <img src="imagen/imagen4.jpg" alt="">
                    <div class="encima">
                        <h2>MULTIPLICACIÓN</h2>
                        <div></div>
                    </div>
                </div>
                <div class="imagenes">
                    <img src="imagen/Multiplicación.jpg" alt=""/>

                </div>
                <div class="imagenes">
                    <img src="imagen/imagen1_1.jpg" alt="">
                </div>
                <div class="sesgoabajo"></div>
            </section>

            <div class="titulo-video">
                <h2>VIDEOS</h2>
            </div>
            <span class="linea"></span>
            <section class="Videos" id="Videos">                    
                <a href="#Video1">
                    <img src="imagen/videomul1.jpg" alt="">
                </a>
                <a href="#Video2">
                    <img src="imagen/videomul2.jpg" alt="">
                </a>
                <a href="#Video3">
                    <img src="imagen/videomul3.jpg" alt="">
                </a>
            </section>
            <article class="light-box" id="Video1">
                <a href="#Video3" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/CpBVPMBXvt4" 
                        frameborder="0" allow="accelerometer; autoplay; clipboard-write; 
                        encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <a href="#Video2" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Videos" class="close">X</a>
            </article>

            <article class="light-box" id="Video2">
                <a href="#Video1" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/ecSMePh4Mzw"
                        frameborder="0" allow="accelerometer; autoplay; clipboard-write;
                        encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <a href="#Video3" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Videos" class="close">X</a>
            </article>

            <article class="light-box" id="Video3">
                <a href="#Video2" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/lgPs3UxM2kU"
                        frameborder="0" allow="accelerometer; autoplay; clipboard-write;
                        encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <a href="#Video1" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Videos" class="close">X</a>
            </article>


            <div class="titulo-ficha">
                <span class="linea"></span>
                <h2>ACTIVIDADES</h2>
            </div>
            <span class="linea"></span>
            <section class="Fichas" id="Fichas">                    
                <a href="#Ficha1">
                    <img src="imagen/Fichas/fichamulti1.png" alt=""/>
                </a>
                <a href="#Ficha2">
                    <img src="imagen/Fichas/fichamulti2.png" alt=""/>
                </a>
                <a href="#Ficha3">
                    <img src="imagen/Fichas/fichamulti3.png" alt=""/>
                </a>
            </section>
            <article class="light-box" id="Ficha1">
                <a href="#Ficha3" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichamulti1.png" alt=""/>
                <a href="#Ficha2" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Fichas" class="close">X</a>
            </article>

            <article class="light-box" id="Ficha2">
                <a href="#Ficha1" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichamulti2.png" alt=""/>
                <a href="#Ficha3" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Fichas" class="close">X</a>
            </article>

            <article class="light-box" id="Ficha3">
                <a href="#Ficha2" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichamulti3.png" alt=""/>
                <a href="#Ficha1" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Fichas" class="close">X</a>
            </article>




            <section class="fondo" id="Actividades">
                <div class="sesgoarriba"></div>
                <div class="contenedor">
                    <h2 class="titulo-patrocinadores">JUEGOS</h2>
                    <h3 class="subtitulo-patrocinadores">Estas son unos juegos que podras desarrollar con el fin de poner 
                        en practica lo aprendido anteriormente</h3>
                    <div class="clientes">
                        <div class="clien">
                            <div class="cliente">
                                <a href="https://www.cokitos.com/happy-burger-tablas-de-multiplicar/play/" target="_blank">
                                    <img alt="https://www.cokitos.com/happy-burger-tablas-de-multiplicar/play/" src="imagen/happyburger.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>HAPPY BURGER</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Happy Burger, en el que puedes cocinar las hamburguesas 
                                    en este restaurante siempre y cuando respondas
                                    correctamente a los resultados de las multiplicaciones. </p>
                            </div>
                        </div>

                        <div class="clien">
                            <div class="cliente">
                                <a href="https://www.cokitos.com/multiplicaciones-ninja-slash/play/" target="_blank">
                                    <img alt="https://www.cokitos.com/multiplicaciones-ninja-slash/play/" src="imagen/ninja.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>NINJA SLASH</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Ninja slash, te encantará esta nueva forma de repasar la tabla de multiplicar.
                                    Elige la dificultad y el número máximo que forma parte de las multiplicaciones.</p>
                            </div>
                        </div>

                        <div class="clien">
                            <div class="cliente">
                                <a href="https://www.cokitos.com/pinguinos-en-canoa-multiplicar/play/" target="_blank">
                                    <img alt="https://www.cokitos.com/pinguinos-en-canoa-multiplicar/play/" src="imagen/pinguino.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>PINGÜINOS EN CANOA</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Los pingüinos compiten en canoas y reman más cuantas más multiplicaciones
                                    hagas de forma correcta. Practica multiplicaciones de dos cifras.</p>
                            </div>
                        </div>


                    </div>
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
                <div class="sesgoabajo-unico"></div>
            </section>

            <section>
                <div class="container">
                    <div class="contact-box" id="Sugerencias">
                        <div>
                            <h2>SUGERENCIAS</h2>
                            <form action="Multiplicacion.jsp" method="post">
                                <div class="form-group">
                                    <label for="nombre">Nombre:</label>
                                    <input type="text" class="form-control" id="nombre" name="txt_Nombre" placeholder="Nombre" required>
                                </div>
                                <div class="form-group">
                                    <label for="edad">Edad:</label>
                                    <input type="text" class="form-control" id="edad" name="txt_Edad"  placeholder="Edad" required>
                                </div>
                                <div class="form-group">
                                    <label for="grado">Grado:</label>
                                    <select id="lista" name="lista">

                                        <option>Primero</option>
                                        <option>Segundo</option>
                                        <option>Tercero</option>
                                        <option>Cuarto</option>
                                        <option>Quinto</option>
                                        <option>Sexto</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="sugerencia">Sugerencia:</label>
                                    <textarea  class="form-control" id="sugerencia" rows="5" cols="20" name="Sugerencia" placeholder="Escribe aqui tu comentario..." required></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="puntuacion">Puntuacion:</label>
                                    <div class="Estrellas">
                                        <p class="clasificacion">
                                            <input id="radio1" type="radio" name="estrellas" value="5"><!--
                                            --><label for="radio1">★</label><!--
                                            --><input id="radio2" type="radio" name="estrellas" value="4"><!--
                                            --><label for="radio2">★</label><!--
                                            --><input id="radio3" type="radio" name="estrellas" value="3"><!--
                                            --><label for="radio3">★</label><!--
                                            --><input id="radio4" type="radio" name="estrellas" value="2"><!--
                                            --><label for="radio4">★</label><!--
                                            --><input id="radio5" type="radio" name="estrellas" value="1"><!--
                                            --><label for="radio5">★</label>
                                        </p>
                                    </div>
                                </div>

                                <button type="submit" name="enviar" class="btn btn-primary">Enviar <i class="fa fa-paper-plane" aria-hidden="true"></i></button>


                            </form>
                        </div>
                    </div>
                </div>
            </section>

        </main>
        <footer>
            <div class="contenedor-footer">
                <h2 class="titulo-footer">MathMind</h2>
                <h2 class="subtitulo-footer">¡Diviertete Aprendiendo!</h2>
            </div>
        </footer>
         <%

            if (request.getParameter("enviar") != null) {
                String nom = request.getParameter("txt_Nombre");
                String edad = request.getParameter("txt_Edad");
                String lista = request.getParameter("lista");
                String suge = request.getParameter("Sugerencia");
                String estre = request.getParameter("estrellas");

                try {
                    Connection con = null;
                    Statement st = null;
                    Class.forName("com.mysql.jdbc.Driver");
                    con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/mathmind", "root", "");
                    st = con.createStatement();
                    st.executeUpdate("INSERT INTO multiplicacion(nom_niño,edad,grado,sugerencia,puntuacion) VALUES('" + nom + "','" + edad + "','" + lista + "','" + suge + "','" + estre + "');");

                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>
    </body>
</html>
