<%-- 
    Document   : prueba
    Created on : 30/10/2020, 08:27:55 PM
    Author     : LAURA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>

 <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&display=swap" rel="stylesheet">
    </head>
    <body>
                    
        <div class="container">
            <img src="imagen/niñalogin.png">
        </div>
        <div class="login-container">
            <form action="Principal_Admin.jsp">
                <img src="imagen/user.png">
                <h2>Welcome</h2>
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div>
                    <h5>Username</h5>
                    <input class="input" type="text">
                </div>
        </div>
        <div>
            <h5>Password</h5>
            <input class="input" type="password">
        </div>
    </div>
    <a href="#">Forgot Password?</a>
    <input type="submit" class="btn" value="Login">
</form>
        </div>
</div>


</body>
</html>




*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body{
   font-family: 'Poppins', sans-serif; 
}
.wave{
    position: fixed;
    height: 100%;
    left: 0;
    bottom: 0;
    z-index: -1;
}

.container{
   width: 100vw;
   height: 100vh;
   display: grid;
   grid-template-columns: repeat(2, 1fr);
   grid-gap: 7rem;
   padding: 0 2rem;
}
.img{
    display: flex;
    justify-content: pro
}