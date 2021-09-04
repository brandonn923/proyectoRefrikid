<%

%>

<%@page import="java.util.ArrayList"%>
<%@page import="DAO.UsuarioDao"%>
<%@page import="VO.UsuarioVO"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
	<meta name = "view-port" content="width=device-width,initial-scale=1" charset="utf-8">
	<meta charset="utf-8">
        <link href="estilos.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--CSS============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/nice-select.css">					
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">
        <link rel="stylesheet" href="css/main.css">
        <title>PÁGINA PRINCIPAL</title>
    </head>
    
    <body>
        <header id="header">
            <div class="container">
                <div id="logo">
                    <a href="ingresar.jsp"><img src="img/logo.png" alt="" title="" /></a>
                </div>
                <div class="row align-items-center justify-content-between d-flex">
                    
                        <nav id="nav-menu-container">
                            <ul class="nav-menu">
                                <li class="menu-active"><a href="registroHistorial.jsp">Historial Clínico</a></li>
                                <li><a href="calendario.jsp">Programación</a></li>
                                <li class="dropdown">
                                    <a href="#"> Estándar Crecimiento</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="ninospeso0a5.jsp" id="comparacion">Peso Niños 0 A 5</a></li>
                                        <li><a href="ninoslongitud0a5.jsp" id="comparacion">Altura Niños 0 A 5</a></li>
                                        <li><a href="ninoslongitudmax5.jsp"</a>Altura Niños Mayores A 5</li>
                                        <li><a href="ninaspeso0a5.jsp">Peso Niñas 0 A 5</a></li>
                                        <li><a href="ninaslongitud0a5.jsp" id="comparacion">Altura Niñas 0 A 5</a></li>
                                        <li><a href="ninaslongitudmax5.jsp">Altura Niñas Mayores A 5</a></li>
                                    </ul>
                                </li>
                                <li><a href="sugerencia.jsp">Sugerencias Nutricional</a></li>
                                <li><a href="reporte.jsp">Reporte Beneficiario</li>
                                <li> <form action="Usuario" method="Post" >
                                        <input type="hidden" name="opcion" value="3">
                                        <button id="boton">Cerrar Sesion</button>
                                    </form>
                                </li>
                            </ul>
                      </nav><!-- #nav-menu-container-->		    		
                </div>
            </div>
        </header><!-- #header -->
          
        <div id="contenedor">
            <div id="carga"></div>
        </div>
        
        <div style="margin-top: 7%">
            <center>
                <% HttpSession sesion=(HttpSession)request.getSession();
                UsuarioVO uservo=(UsuarioVO)sesion.getAttribute("datos");
                if(uservo == null){
                request.getRequestDispatcher("ingresar.html").forward(request, response);
                }
                %>
                <h1>Bienvenido <%= uservo.getCorreologin() %></h1>
                <ul>
                    <li><a href="ninospeso0a5.jsp" id="comparacion">Peso Niños 0 A 5</a></li>
                                        <li><a href="ninoslongitud0a5.jsp" id="comparacion">Altura Niños 0 A 5</a></li>
                                        <li><a href="ninoslongitudmax5.jsp"</a>Altura Niños Mayores A 5</li>
                                        <li><a href="ninaspeso0a5.jsp">Peso Niñas 0 A 5</a></li>
                                        <li><a href="ninaslongitud0a5.jsp" id="comparacion">Altura Niñas 0 A 5</a></li>
                                        <li><a href="ninaslongitudmax5.jsp">Altura Niñas Mayores A 5</a></li>
                </ul>
            </center>
        </div>
                
        <!--<form action="Usuario" method="Post" >
            <input type="hidden" name="opcion" value="3">
            <button id="boton">Cerrar Sesion</button>
        </form>-->
                
        <script>
            window.onload=function(){
                var contenedor=document.getElementById('contenedor');
                contenedor.style.visibility ='hidden';
                contenedor.style.opacity='0';
            } 
        </script>
    </body>
</body>
</html>
