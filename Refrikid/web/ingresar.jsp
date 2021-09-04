<%-- 
    Document   : ingresar
    Created on : Nov 25, 2018, 1:24:00 PM
    Author     : Javir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Iniciar Sesión</title>
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="img/favicon.png"/>
    </head>

    <body>
        <div class="wrapper fadeInDown">
                <div id="formContent">
                    <img src="img/logo.png"><br>
                    <!-- Tabs Titles -->
                    <h2 class="active">Iniciar Sesión</h2>
                    <h2 class="inactive underlineHover"><a href="registrar.jsp">Regístrar</a></h2>


                    <!-- Login Form -->
                    <form method="post" action="Usuario">
                      <input type="text" id="login" class="fadeIn second" name="correo" placeholder="Usuario">
                      <input type="password" id="password" class="fadeIn third" name="password" placeholder="Contraseña">
                      <br>
                      <input type="hidden" name="opcion" value="2">
                      <input type="submit" class="fadeIn fourth" value="Ingresar">
                    </form>

                    <!-- Remind Passowrd -->
                    <div id="formFooter">
                      <a class="underlineHover" href="index.jsp">Volver</a>
                    </div>

                </div>
           
        </div>
    </body>
    
    
</html>
