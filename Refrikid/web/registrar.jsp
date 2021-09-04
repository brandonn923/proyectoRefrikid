<%-- 
    Document   : index
    Created on : 15-nov-2018, 18:19:42
    Author     : FAMILIA NOVOA
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Registrate</title>
        <link rel="stylesheet" href="css/styleRegistro.css">
        <link rel="shortcut icon" href="img/favicon.png"/>
    </head>

    <body>
        <div class="wrapper1 fadeInDown">
                <div id="formContent1">
                    <img src="img/logo.png"><br>
                    <h2 class="inactive underlineHover"><a href="ingresar.jsp">Iniciar Sesión</a></h2>
                    <h2 class="active">Registrar</h2>
                    <form method="post" action="Usuario">
                        <h3 class="titulo">Registrar Acudiente</h3><br>
                        <input type="text" id="registroPadre" class="fadeIn second" name="primernombre" placeholder="Ingrese su primer nombre">
                        <input type="text" id="registroPadre" class="fadeIn second" name="segundonombre" placeholder="Ingrese su segundo nombre">
                        <input type="text" id="registroPadre" class="fadeIn second" name="primerapellido" placeholder="Ingrese su primer apellido">
                        <input type="text" id="registroPadre" class="fadeIn second" name="segundoapellido" placeholder="Ingrese su segundo apellido">    
                        <select name="documentoacu" id="registroPadre" class="fadeIn second">
                            <option id="default">:: Tipo de Documento ::</option>
                            <option>Cédula de Ciudadania</option> 
                            <option>Pasaporte</option>
                            <option>NIT</option>
                        </select>
                        <input type="text" id="registroPadre" class="fadeIn second" name="numerodocumento" placeholder="Ingrese su número de documento">
                        <input type="number" id="registroPadre" class="fadeIn second"  name="telefono" placeholder="Ingrese su número de teléfono">
                        <input type="text" id="registroPadre" class="fadeIn second" name="direccion" placeholder="Ingrese su dirección">                        
                        <input type="email" id="registroPadre" class="fadeIn second" name="nombreusuario" placeholder="Ingrese su correo">
                        <input type="email" id="registroPadre" class="fadeIn second"  name="correo" placeholder="Ingrese la confirmación del correo"> 
                        <input type="password" id="registroPadre" class="fadeIn third" name="clave" placeholder="Ingrese su contraseña">
                        <input type="password" id="registroPadre" class="fadeIn third" name="contrasena" placeholder="Ingrese la confirmación de la contraseña">
                        
                        <br><h3 class="titulo">Registrar Beneficiario</h3><br>
                        <input type="text" id="registroBenifi" class="fadeIn second" name="primernombrebeneficiario" placeholder="Ingrese el primer nombre">
                        <input type="text" id="registroBenifi" class="fadeIn second" name="segundonombrebeneficiario" placeholder="Ingrese el segundo nombre">
                        <input type="text" id="registroBenifi" class="fadeIn second" name="primerapellidobeneficiario" placeholder="Ingrese el primer apellido">
                        <input type="text" id="registroBenifi" class="fadeIn second" name="segundoapellidobeneficiario" placeholder="Ingrese el segundo apellido">
                        <select name="documentoben" id="registroBenifi" class="fadeIn second">
                            <option id="default">:: Tipo de Documento ::</option>
                            <option>Registro Civil</option> 
                            <option>Tarjeta de Identidad</option>
                        </select>
                        <input type="text" id="registroBenifi" class="fadeIn second" name="numerodocumentoben" placeholder="Ingrese el número de documento">
                        <select name="genero" id="registroBenifi" class="fadeIn second">
                            <option>:: Género ::</option>
                            <option>Masculino</option>
                            <option>Femenino</option>
                        </select>
                        
                        <input type="date" id="registroPadre" class="fadeIn second" name="fechanacimiento">
                        <!--<input type="text" id="registroBenifi" class="fadeIn second" name="rh" placeholder="Ingrese el RH">!-->
                        <select name="rh">
                            <option>:: RH ::</option>
                            <option>A+</option>
                            <option>A-</option>
                            <option>B+</option>
                            <option>B-</option>
                            <option>AB+</option>
                            <option>AB-</option>
                            <option>O+</option>
                            <option>O-</option>
                        </select>
                        <br>
                        <input type="reset" class="fadeIn fourth" value="Restablecer">
                        <input type="hidden" name="opcion" value="1">
                        <input type="submit" class="fadeIn fourth" value="Registrate">
                    </form>
                </div>
        </div>
    </body>
    
    
</html>
