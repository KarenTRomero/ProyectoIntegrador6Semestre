<%@page import="java.sql.*"%>
<%@page import="com.mysql.jdbc.Driver"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>División</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/EstiloDivi.css" rel="stylesheet" te="text/>css"/>  
        <link href="https://fonts.googleapis.com/css2?family=Acme&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <div class="textos">
                <h1 class="titulo">LAS DIVISIONES</h1>
                <h3 class="sibtitulo"></h3>
                <a href="Principal_Clien.jsp" class="boton">HOME</a>
            </div>
            <div class="sesgoabajo"></div> 
        </header>
        <main>
            <section class="Acerca-de">
                <div class="contenedor">
                    <h2 class="sobre-nosotros">Las Divisiones</h2>
                    <h3 class="Slogan">La división es una operación matemática de aritmética elemental</h3>
                    <p class="parrafo"> La división es una de las operaciones básicas de la aritmética que consiste en separar en partes iguales un total.
                        En matemáticas, el símbolo de la división es el signo (÷), dos puntos (:) o barra oblicua (/). 
                        El signo para la división se ubica entre el dividendo y el divisor, siendo, el dividendo 
                        la parte total y el divisor el número de partes iguales que se quiere separar </p>
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
                        <h2>DIVISIÓN</h2>
                        <div></div>
                    </div>
                </div>
                <div class="imagenes">
                    <img src="imagen/division.jpg" alt=""/>

                </div>
                <div class="imagenes">
                    <img src="imagen/imagen1_1.jpg" alt="">
                </div>
                <div class="sesgoabajo"></div>
            </section>
            <section class="servicios contenedor" id="servicio">
                <h2 class="subtitulo">¿Cómo hacer divisiones?</h2>
                <div class="contenedor-servicio">
                    <img src="imagen/ejemplodivi.png" alt=""/>
                    <div class="checklist-servicio">
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">1</span>Paso1</h3>
                            <p> Cogemos la primera cifra del dividendo. Si esta cifra es más pequeña que el divisor,
                                entonces tendremos que coger otra cifra más del dividendo.</p>
                        </div>
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">2</span>Paso2</h3>
                            <p>Buscamos un número que al multiplicarlo por el divisor nos dé como resultado el dividendo.
                                Si no lo hay, buscamos el resultado menor más próximo. El resultado de la multiplicación se resta al dividendo.</p>
                        </div>
                        <div class="servicio">
                            <h3 class="n-servicio"><span class="number">3</span>Paso3</h3>
                            <p>Bajamos la siguiente cifra del dividendo y realizamos de nuevo el paso 2.
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
                        <h2>DIVISIÓN</h2>
                        <div></div>
                    </div>
                </div>
                <div class="imagenes">
                    <img src="imagen/division.jpg" alt=""/>

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
                    <img src="imagen/videodiv1.jpg" alt="">
                </a>
                <a href="#Video2">
                    <img src="imagen/videodiv2.jpg" alt="">
                </a>
                <a href="#Video3">
                    <img src="imagen/videodiv3.jpg" alt="">
                </a>
            </section>
            <article class="light-box" id="Video1">
                <a href="#Video3" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/PCRCrdJbaCM"
                        frameborder="0" allow="accelerometer; autoplay; 
                        clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <a href="#Video2" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Videos" class="close">X</a>
            </article>

            <article class="light-box" id="Video2">
                <a href="#Video1" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/mQ4wKV9_pZs" 
                        frameborder="0" allow="accelerometer; autoplay; 
                        clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                <a href="#Video3" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Videos" class="close">X</a>
            </article>

            <article class="light-box" id="Video3">
                <a href="#Video2" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <iframe width="560" height="560" src="https://www.youtube.com/embed/8QL-Rws-VXM" 
                        frameborder="0" allow="accelerometer; autoplay;
                        clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
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
                    <img src="imagen/Fichas/fichasdivi1.png" alt=""/>
                </a>
                <a href="#Ficha2">
                    <img src="imagen/Fichas/fichasdivi2.png" alt=""/>
                </a>
                <a href="#Ficha3">
                    <img src="imagen/Fichas/fichasdivi3.png" alt=""/>
                </a>
            </section>
            <article class="light-box" id="Ficha1">
                <a href="#Ficha3" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichasdivi1.png" alt=""/>
                <a href="#Ficha2" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Fichas" class="close">X</a>
            </article>

            <article class="light-box" id="Ficha2">
                <a href="#Ficha1" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichasdivi2.png" alt=""/>
                <a href="#Ficha3" class="next"><i class="fa fa-arrow-right" aria-hidden="true"></i></a>
                <a href="#Fichas" class="close">X</a>
            </article>

            <article class="light-box" id="Ficha3">
                <a href="#Ficha2" class="next"><i class="fa fa-arrow-left" aria-hidden="true"></i></a>
                <img src="imagen/Fichas/fichasdivi3.png" alt=""/>
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
                                <a href="https://www.tablasdemultiplicar.com/spuq-divisiones.html" target="_blank">
                                    <img alt="https://www.tablasdemultiplicar.com/spuq-divisiones.html" src="imagen/jirafa.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>SPUQ</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Puedes practicar sumas en varios niveles, junto con la mascota Spuq. 
                                    Puedes practicar divisiones en 2 diferentes niveles. 
                                    Este nivel es una mezcla de tablas de división y sumas hasta 100.  </p>
                            </div>
                        </div>

                        <div class="clien">
                            <div class="cliente">
                                <a href="https://matecitos.com/juegos-matecitos-4-primaria/juego-de-la-division" target="_blank">
                                    <img alt="https://matecitos.com/juegos-matecitos-4-primaria/juego-de-la-division" src="imagen/monstruo.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>MATECITOS</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Cálculo mental con divisiones.En este juego te tienes que dar prisa y resolver rápido todas las divisiones 
                                    que proponen los matecitos. Ve muy rápido, y no te equivoques, y puedes jugar una y otra vez.</p>
                            </div>
                        </div>

                        <div class="clien">
                            <div class="cliente">
                                <a href="https://www.vedoque.com/juegos/juego.php?j=cueva-murcielagos&l=es" target="_blank">
                                    <img alt="https://www.vedoque.com/juegos/juego.php?j=cueva-murcielagos&l=es" src="imagen/tigre.png">
                                </a>
                            </div>
                            <div class="titulo-juego">
                                <h4>LA CUEVA DE LOS MURCIÉLAGOS</h4>
                            </div>
                            <div class="descrip-juego">
                                <p>Ayuda a Ergit a salir de la cueva de los murciélagos.
                                    utiliza las flechas del teclado para jugar.
                                    Resuelve las operaciones de los cubimal para conseguir
                                    inmunidad.</p>
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
                            <form action="Division.jsp" method="post">
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
                    st.executeUpdate("INSERT INTO division(nom_niño,edad,grado,sugerencia,puntuacion) VALUES('" + nom + "','" + edad + "','" + lista + "','" + suge + "','" + estre + "');");

                } catch (Exception e) {
                    out.print(e);
                }

            }
        %>
    </body>
</html>
