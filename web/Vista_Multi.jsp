<%-- 
    Document   : Vista_Multi
    Created on : 20/11/2020, 01:19:06 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Vista Multiplicacion</title>
         <link href="css/Estilo_Sugerencia.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
   <link rel="icon" type="image/jpg" href="imagen/logo-icono.png"
    </head>
    <body>
         <h2 class="text-center" id="titulo"><img src="imagen/cohete.png" alt=""/> MATHMIND</h2>
        <a href="Scroll.jsp" class="volver"><i class="fa fa-reply" aria-hidden="true"></i> Volver</a>
        <div class="container mt-5">
            <div class="row mt-2">
                <div class="col-sm">
                    <form  action="Vista_Sugerencia.jsp" method="get">

                        <table  class="table table-hover table-light" >
                            <thead class="thead-dark">
                                <tr>

                                    <th scope="col" class="text-center">


                                        <a type="submit" name="btn_Limpiar" id="limpiar" href="Eliminar_Multi.jsp" onclick="return confirm('Estás seguro que deseas eliminar toda la informacion?');"s>Limpiar <i class="fa fa-trash" aria-hidden="true"></i></a>
                                    </th>
                                    <th scope="col" colspan="6" class="text-center"></th>

                                </tr>
                                <tr>
                                    <th scope="col" class="text-center">ID</th>
                                    <th scope="col" class="text-center">NOMBRE</th>
                                    <th scope="col" class="text-center">EDAD</th>
                                    <th scope="col" class="text-center">GRADO</th>
                                    <th scope="col" class="text-center">OPINION</th>
                                    <th scope="col" class="text-center">PUNTUACIÓN</th>

                                </tr>
                            </thead>
                            <tbody>
                                     <jsp:include page="Multi"/>
                            </tbody>
                        </table>
                    </form>
                </div>
            </div>
        </div>

    </body>
</html>
