<%-- 
    Document   : reporte
    Created on : 28-nov-2018, 16:37:33
    Author     : FAMILIA NOVOA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" >

<head>
  <meta charset="UTF-8">
  <title>Reporte de su hijo</title>
      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
        <div class="wrapper fadeInDown">
            <div id="formContent">
                <!-- Icon -->
                    <div class="fadeIn first">
                      <img src="img/logo.png" id="icon" />
                    </div>
                
                <!-- Tabs Titles -->
                    <h2 class="active"> Reporte del Beneficiario </h2>
                    <br><br>
                <!-- Login Form -->
                    <form action="Reporte" method="POST" >
                        <input type="text" id="login" class="fadeIn second" name="identificacion" placeholder="Ingrese la identificación del beneficiario">
                        <br><br>
                        <input type="submit" class="fadeIn fourth" value="Consultar Reporte">
                    </form>
                <!-- Remind Passowrd -->
                    <div id="formFooter">
                        <a class="underlineHover" href="usuario.jsp">Volver</a>
                    </div>
            </div>
        </div>
    </body>
</html>
