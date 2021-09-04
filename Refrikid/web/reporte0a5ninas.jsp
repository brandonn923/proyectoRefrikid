<%-- 
    Document   : reporte0a5ninas
    Created on : 30-nov-2018, 18:51:23
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Niñas 0 - 5</title>
         <!-- plugins:css -->
  <link rel="stylesheet" href="vendors/iconfonts/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="vendors/css/vendor.bundle.base.css">
  <!-- endinject -->
  <!-- inject:css -->
  <link href="css/styleAdmin.css" rel="stylesheet" type="text/css"/>
  <!-- endinject -->
  <link rel="shortcut icon" href="img/favicon.png"/>
    </head>
    <body>
      <div class="container-scroller">
        <!-- partial:partials/_navbar.html -->
        <nav class="navbar default-layout-navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <a class="navbar-brand brand-logo" href="usuario.jsp"><img src="img/images/logo.svg" alt="logo"/></a>
        <a class="navbar-brand brand-logo-mini" href="usuario.jsp"><img src="img/images/logo-mini.svg" alt="logo"/></a>
      </div>
      <div class="navbar-menu-wrapper d-flex align-items-stretch">
        <div class="search-field d-none d-md-block">
          
        </div>
        <ul class="navbar-nav navbar-nav-right">
          <li class="nav-item nav-profile dropdown">
            <a class="nav-link dropdown-toggle" id="profileDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
              <div class="nav-profile-img">
                <img src="img/images/faces/face1.svg" alt="image">
                <span class="availability-status online"></span>             
              </div>
              <div class="nav-profile-text">
                <p class="mb-1 text-black">Usuario</p>
              </div>
            </a>
            <div class="dropdown-menu navbar-dropdown" aria-labelledby="profileDropdown">
              <div class="dropdown-divider"></div>
              <a class="dropdown-item" href="ingresar.jsp"> 
                <i class="mdi mdi-logout mr-2 text-primary"></i>
                Cerrar Sesión
              </a>
            </div>
          </li>
          <li class="nav-item nav-settings d-none d-lg-block">
            <a class="nav-link" href="#">
              <i class="mdi mdi-format-line-spacing"></i>
            </a>
          </li>
        </ul>
        <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span class="mdi mdi-menu"></span>
        </button>
      </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
      <!-- partial:partials/_sidebar.html -->
      <nav class="sidebar sidebar-offcanvas" id="sidebar">
        <ul class="nav">
          <li class="nav-item nav-profile">
            <a href="#" class="nav-link">
              <div class="nav-profile-image">
                <img src="img/images/faces/face1.svg" alt="profile">
                <span class="login-status online"></span> <!--change to offline or busy as needed-->              
              </div>
              <div class="nav-profile-text d-flex flex-column">
                <span class="font-weight-bold mb-2">Usuario</span>
                <span class="text-secondary text-small">Padre y/o Acudiente</span>
              </div>
              <i class="mdi mdi-bookmark-check text-success nav-profile-badge"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="usuario.jsp">
              <span class="menu-title">Inicio</span>
              <i class="mdi mdi-home menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="registroHistorial.jsp">
              <span class="menu-title">Datos de Crecimiento</span>
              <i class="mdi mdi-table-edit menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" data-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
              <span class="menu-title">Estándar Crecimiento</span>
              <i class="menu-arrow"></i>
              <i class="mdi mdi-chart-line menu-icon"></i>
            </a>
            <div class="collapse" id="ui-basic">
              <ul class="nav flex-column sub-menu">
                    <li class="nav-item"> <a class="nav-link" href="ninoslongitud0a5.jsp" target="_blank">Altura Niños 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niños Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninospeso0a5.jsp" target="_blank">Peso Niños 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninospesomax5.jsp" target="_blank">Peso Niños Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitud0a5.jsp" target="_blank">Altura Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaslongitudmax5.jsp" target="_blank">Altura Niñas Mayores A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="ninaspeso0a5.jsp" target="_blank">Peso Niñas 0 A 5 </a></li>
                    <li class="nav-item"> <a class="nav-link" href="#" target="_blank">Peso Niñas Mayores A 5 </a></li>
              </ul>
            </div>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="listaAlimentos.jsp">
              <span class="menu-title">Lista de Alimentos</span>
              <i class="mdi mdi-menu menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="reporte.jsp">
              <span class="menu-title">Reportes</span>
              <i class="mdi mdi-chart-bar menu-icon"></i>
            </a>
          </li>
          <li class="nav-item">
              <a class="nav-link" href="calendarioU.jsp">
              <span class="menu-title">Buscar Menú</span>
              <i class="mdi mdi-calendar-blank menu-icon"></i>
            </a>
          </li>
           <li class="nav-item">
               <a class="nav-link" href="sugerencia.jsp">
              <span class="menu-title">Sugerencia Nutricional</span>
              <i class="mdi mdi-message-text menu-icon"></i>
            </a>
          </li>
        </ul>
      </nav>
         <!-- partial -->
          <div class="main-panel">
            <div class="content-wrapper">
              <div class="page-header">
                <h3 class="page-title">
                  Reporte del Beneficiario
                </h3>
            </div>
            <div class="row">
                <div class="col-12 grid-margin">
                  <div class="card">
                    <div class="card-body">
                        <% 
                            int edad = Integer.parseInt(request.getAttribute("edad").toString());
                            double peso = Double.parseDouble(request.getAttribute("peso").toString());
                            double estatura = Double.parseDouble(request.getAttribute("talla").toString());
                            String nombre = request.getAttribute("nombre").toString();
                        %>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Parametros</th>
                                        <th>Resultados</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>Nombre</td>
                                        <td ><%= nombre %></td>
                                    </tr>
                                    <tr>
                                        <td>Edad</td>
                                        <td ><%= edad %> Años </td>
                                    </tr>
                                    <tr>
                                        <td>Genero</td>
                                        <td>Femenino</td>
                                    </tr>
                                    <tr>
                                        <td>Peso</td>
                                        <td><%= peso %> KG</td>
                                    </tr>
                                    <tr>
                                        <td>Estatura</td>
                                        <td><%= estatura %> </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>                    
            </div>
        </div>

        
                <%
                int edadmeses=edad*12;
                
           XYSeries primerpercentil=new XYSeries("Primer Percentil");
           primerpercentil.add(0,2.5);
           primerpercentil.add(2,4.0);
           primerpercentil.add(4,5.0);
           primerpercentil.add(6,5.8);           
           primerpercentil.add(8,6.3);           
           primerpercentil.add(10,6.8);           
           primerpercentil.add(12,7.1);
           primerpercentil.add(14,7.5);           
           primerpercentil.add(16,7.9);           
           primerpercentil.add(18,8.2);
           primerpercentil.add(20,8.5);
           primerpercentil.add(22,8.9);           
           primerpercentil.add(24,9.1);
           primerpercentil.add(26,9.5);
           primerpercentil.add(28,9.9);
           primerpercentil.add(30,10.1);
           primerpercentil.add(32,10.4);
           primerpercentil.add(34,10.8);
           primerpercentil.add(36,11);           
           primerpercentil.add(38,11.2);
           primerpercentil.add(40,11.4);
           primerpercentil.add(42,11.8);
           primerpercentil.add(44,12);
           primerpercentil.add(46,12.1);
           primerpercentil.add(48,12.4);           
           primerpercentil.add(50,12.8);
           primerpercentil.add(52,13);
           primerpercentil.add(54,13.1);
           primerpercentil.add(56,13.4);
           primerpercentil.add(58,13.8);
           primerpercentil.add(60,14);
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(0, 2.8);
           segundopercentil.add(2, 4.5);
           segundopercentil.add(4, 5.8);
           segundopercentil.add(6, 6.4);
           segundopercentil.add(8, 7);
           segundopercentil.add(10, 7.5);
           segundopercentil.add(12, 7.9);
           
           segundopercentil.add(14, 8.2);
           segundopercentil.add(16, 8.7);
           segundopercentil.add(18, 9);
           segundopercentil.add(20, 9.3);
           segundopercentil.add(22, 9.7);
           segundopercentil.add(24, 10.1);
           
           segundopercentil.add(26, 10.5);
           segundopercentil.add(28, 10.9);
           segundopercentil.add(30, 11.1);
           segundopercentil.add(32, 11.5);
           segundopercentil.add(34, 11.9);
           segundopercentil.add(36, 12.1);
           
           segundopercentil.add(38, 12.5);
           segundopercentil.add(40, 12.9);
           segundopercentil.add(42, 13.1);
           segundopercentil.add(44, 13.4);
           segundopercentil.add(46, 13.8);
           segundopercentil.add(48, 14);
           
           segundopercentil.add(50, 14.2);
           segundopercentil.add(52, 14.6);
           segundopercentil.add(54, 14.9);
           segundopercentil.add(56, 15.1);
           segundopercentil.add(58, 15.5);
           segundopercentil.add(60, 15.8);
           
           
           
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(0,3.2);
           tercerpercentil.add(2,5.1);
           tercerpercentil.add(4,6.5);
           tercerpercentil.add(6,7.3);
           tercerpercentil.add(8,8);
           tercerpercentil.add(10,8.4);
           tercerpercentil.add(12,9);
           
           tercerpercentil.add(14,9.3);
           tercerpercentil.add(16,9.8);
           tercerpercentil.add(18,10.1);
           tercerpercentil.add(20,10.7);
           tercerpercentil.add(22,11.1);
           tercerpercentil.add(24,11.5);
           
           tercerpercentil.add(26,11.9);
           tercerpercentil.add(28,12.2);
           tercerpercentil.add(30,12.7);
           tercerpercentil.add(32,13.1);
           tercerpercentil.add(34,13.5);
           tercerpercentil.add(36,13.9);
           
           tercerpercentil.add(38,14.2);
           tercerpercentil.add(40,14.6);
           tercerpercentil.add(42,15);
           tercerpercentil.add(44,15.2);
           tercerpercentil.add(46,15.6);
           tercerpercentil.add(48,16);
           
           tercerpercentil.add(50,16.3);
           tercerpercentil.add(52,16.9);
           tercerpercentil.add(54,17.2);
           tercerpercentil.add(56,17.6);
           tercerpercentil.add(58,17.9);
           tercerpercentil.add(60,18.1);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(0, 3.8);
           cuartopercentil.add(2, 5.9);
           cuartopercentil.add(4, 7.2);
           cuartopercentil.add(6, 8.2);
           cuartopercentil.add(8, 9);
           cuartopercentil.add(10, 9.7);
           cuartopercentil.add(12, 10.1);
           
           cuartopercentil.add(14, 10.8);
           cuartopercentil.add(16, 11.2);
           cuartopercentil.add(18, 11.8);
           cuartopercentil.add(20, 12.1);
           cuartopercentil.add(22, 12.7);
           cuartopercentil.add(24, 13.1);
           
           cuartopercentil.add(26, 13.5);
           cuartopercentil.add(28, 14);
           cuartopercentil.add(30, 14.5);
           cuartopercentil.add(32, 15);
           cuartopercentil.add(34, 15.4);
           cuartopercentil.add(36, 15.9);
           
           cuartopercentil.add(38, 16.3);
           cuartopercentil.add(40, 16.9);
           cuartopercentil.add(42, 17.2);
           cuartopercentil.add(44, 17.8);
           cuartopercentil.add(46, 18.1);           
           cuartopercentil.add(48, 18.6);
           
           cuartopercentil.add(50, 19);
           cuartopercentil.add(52, 19.5);
           cuartopercentil.add(54, 20);
           cuartopercentil.add(56, 20.3);
           cuartopercentil.add(58, 20.9);
           cuartopercentil.add(60,21.2 );                      
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(0, 4.2);
           quintopercentil.add(2, 6.7);
           quintopercentil.add(4, 8.1);
           quintopercentil.add(6, 9.1);
           quintopercentil.add(8, 10);
           quintopercentil.add(10, 10.8);
           quintopercentil.add(12, 11.3);
           
           quintopercentil.add(14, 12);
           quintopercentil.add(16, 12.4);
           quintopercentil.add(18, 13);
           quintopercentil.add(20, 13.5);
           quintopercentil.add(22, 14.1);
           quintopercentil.add(24, 14.6);
           
           quintopercentil.add(26, 15.1);
           quintopercentil.add(28, 15.7);
           quintopercentil.add(30, 16.2);
           quintopercentil.add(32, 16.7);
           quintopercentil.add(34, 17.2);
           quintopercentil.add(36, 17.9);
           
           quintopercentil.add(38, 18.3);
           quintopercentil.add(40, 19);
           quintopercentil.add(42, 19.5);
           quintopercentil.add(44, 20);
           quintopercentil.add(46, 20.5);
           quintopercentil.add(48, 21);
           
           quintopercentil.add(50, 21.7);
           quintopercentil.add(52, 22.2);
           quintopercentil.add(54, 22.8);
           quintopercentil.add(56, 23.3);
           quintopercentil.add(58, 23.9);
           quintopercentil.add(60, 24.3);
           
           
           XYSeries resultado=new XYSeries("Resultado");
           resultado.add(edadmeses,peso);
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           dataset.addSeries(resultado);
           JFreeChart graficapesonina=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑAS MENORES DE 5 AÑOS", "Edad por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plot=graficapesonina.getXYPlot();
           XYLineAndShapeRenderer renderer=new XYLineAndShapeRenderer();
           renderer.setSeriesPaint(0,Color.RED);
           renderer.setSeriesStroke(0, new BasicStroke(1.0f));
           renderer.setSeriesPaint(1,Color.ORANGE);
           renderer.setSeriesStroke(1, new BasicStroke(1.0f));
           renderer.setSeriesPaint(2,Color.GREEN);
           renderer.setSeriesStroke(2, new BasicStroke(1.0f));
           renderer.setSeriesPaint(3,Color.orange);
           renderer.setSeriesStroke(3, new BasicStroke(1.0f));
           renderer.setSeriesPaint(4,Color.RED);
           renderer.setSeriesStroke(4, new BasicStroke(1.0f));
           renderer.setSeriesPaint(5,Color.BLACK);
           renderer.setSeriesStroke(5, new BasicStroke(5.0f));
           
           plot.setRenderer(renderer);
           
 ChartUtilities.saveChartAsJPEG(new File("C:/xampp/htdocs/Refrikid/web/graficapesonina0a5.jpg"), graficapesonina, 900,400);

XYSeries primerpercentillong=new XYSeries("Primer Percentil");
           primerpercentillong.add(0,46);
           primerpercentillong.add(2,53);
           primerpercentillong.add(4,58);
           primerpercentillong.add(6,61.5);
           primerpercentillong.add(8 ,64);
           primerpercentillong.add(10,66);
           primerpercentillong.add(12,69);
           
           primerpercentillong.add(14,71);
           primerpercentillong.add(16,73);
           primerpercentillong.add(18,75);
           primerpercentillong.add(20,77);
           primerpercentillong.add(22,78.5);
           primerpercentillong.add(24,80);
           
           primerpercentillong.add(26,81.5);
           primerpercentillong.add(28,82.5);
           primerpercentillong.add(30,84);
           primerpercentillong.add(32,85);
           primerpercentillong.add(34,87);
           primerpercentillong.add(36,88);

           primerpercentillong.add(38,89);
           primerpercentillong.add(40,90);
           primerpercentillong.add(42,91);
           primerpercentillong.add(44,92);
           primerpercentillong.add(46,93);
           primerpercentillong.add(48,94);

           primerpercentillong.add(50,96);
           primerpercentillong.add(52,97);
           primerpercentillong.add(54,98);
           primerpercentillong.add(56,99);
           primerpercentillong.add(58,100);
           primerpercentillong.add(60,101);
           
           XYSeries segundopercentillong=new XYSeries("Segundo Percentil");
           segundopercentillong.add(0, 47);
           segundopercentillong.add(2, 55);
           segundopercentillong.add(4, 60);
           segundopercentillong.add(6, 63);
           segundopercentillong.add(8, 66);
           segundopercentillong.add(10, 69);
           segundopercentillong.add(12, 71);
           
           segundopercentillong.add(14, 74);
           segundopercentillong.add(16, 76);
           segundopercentillong.add(18, 78);
           segundopercentillong.add(20, 80);
           segundopercentillong.add(22, 81);
           segundopercentillong.add(24, 83);
           
           segundopercentillong.add(26, 84);
           segundopercentillong.add(28, 86);
           segundopercentillong.add(30, 87);
           segundopercentillong.add(32, 88);
           segundopercentillong.add(34, 90);
           segundopercentillong.add(36, 91);
           
           segundopercentillong.add(38, 93);
           segundopercentillong.add(40, 94);
           segundopercentillong.add(42, 95);
           segundopercentillong.add(44, 96);
           segundopercentillong.add(46, 97);
           segundopercentillong.add(48, 98);
           
           segundopercentillong.add(50, 99);
           segundopercentillong.add(52, 101);
           segundopercentillong.add(54, 102);
           segundopercentillong.add(56, 103);
           segundopercentillong.add(58, 104);
           segundopercentillong.add(60, 105);
           XYSeries tercerpercentillong=new XYSeries("Tercer Percentil");
           tercerpercentillong.add(0,49);
           tercerpercentillong.add(2,57);
           tercerpercentillong.add(4,62);
           tercerpercentillong.add(6,66);
           tercerpercentillong.add(8,69);
           tercerpercentillong.add(10,71);
           tercerpercentillong.add(12,74);
           
           tercerpercentillong.add(14,76);
           tercerpercentillong.add(16,79);
           tercerpercentillong.add(18,81);
           tercerpercentillong.add(20,83);
           tercerpercentillong.add(22,85);
           tercerpercentillong.add(24,86);
           
           tercerpercentillong.add(26,87);
           tercerpercentillong.add(28,89);
           tercerpercentillong.add(30,91);
           tercerpercentillong.add(32,93);
           tercerpercentillong.add(34,94);
           tercerpercentillong.add(36,95);
           
           tercerpercentillong.add(38,96);
           tercerpercentillong.add(40,98);
           tercerpercentillong.add(42,99);
           tercerpercentillong.add(44,100);
           tercerpercentillong.add(46,101);
           tercerpercentillong.add(48,103);
           
           tercerpercentillong.add(50,104);
           tercerpercentillong.add(52,105);
           tercerpercentillong.add(54,106);
           tercerpercentillong.add(56,107);
           tercerpercentillong.add(58,108);
           tercerpercentillong.add(60,109.5);
           XYSeries cuartopercentillong=new XYSeries("Cuarto Percentil");
           cuartopercentillong.add(0, 51);
           cuartopercentillong.add(2, 59);
           cuartopercentillong.add(4, 64);
           cuartopercentillong.add(6, 68);
           cuartopercentillong.add(8, 71);
           cuartopercentillong.add(10,74);
           cuartopercentillong.add(12,77);
           
           cuartopercentillong.add(14, 79);
           cuartopercentillong.add(16, 82);
           cuartopercentillong.add(18, 84);
           cuartopercentillong.add(20, 86);
           cuartopercentillong.add(22, 88);
           cuartopercentillong.add(24, 90);
           
           cuartopercentillong.add(26, 91);
           cuartopercentillong.add(28, 93);
           cuartopercentillong.add(30, 94);
           cuartopercentillong.add(32, 96);
           cuartopercentillong.add(34, 97);
           cuartopercentillong.add(36, 99);
           
           cuartopercentillong.add(38, 101);
           cuartopercentillong.add(40, 102);
           cuartopercentillong.add(42, 103);
           cuartopercentillong.add(44, 105);
           cuartopercentillong.add(46, 106);
           cuartopercentillong.add(48, 107);
           
           cuartopercentillong.add(50, 108);
           cuartopercentillong.add(52, 110);
           cuartopercentillong.add(54, 111);
           cuartopercentillong.add(56, 112);
           cuartopercentillong.add(58, 113);
           cuartopercentillong.add(60, 114.5);
                      
           XYSeries quintopercentillong=new XYSeries("Quinto Percentil");
           quintopercentillong.add(0, 53);
           quintopercentillong.add(2, 61);
           quintopercentillong.add(4, 66);
           quintopercentillong.add(6, 70);
           quintopercentillong.add(8, 73);
           quintopercentillong.add(10, 76);
           quintopercentillong.add(12, 79);
           
           quintopercentillong.add(14, 81);
           quintopercentillong.add(16, 84);
           quintopercentillong.add(18, 86);
           quintopercentillong.add(20, 88);
           quintopercentillong.add(22, 90);
           quintopercentillong.add(24, 92);
           
           quintopercentillong.add(26, 94);
           quintopercentillong.add(28, 96);
           quintopercentillong.add(30, 97);
           quintopercentillong.add(32, 99);
           quintopercentillong.add(34, 101);
           quintopercentillong.add(36, 102);
           
           quintopercentillong.add(38, 104);
           quintopercentillong.add(40, 105);
           quintopercentillong.add(42, 107);
           quintopercentillong.add(44, 108);
           quintopercentillong.add(46, 109);
           quintopercentillong.add(48, 111);
           
           quintopercentillong.add(50, 112);
           quintopercentillong.add(52, 113.5);
           quintopercentillong.add(54, 115);
           quintopercentillong.add(56, 116);
           quintopercentillong.add(58, 117);
           quintopercentillong.add(60, 118.5);
           
           XYSeries resultadolong=new XYSeries("Resultado");
           resultadolong.add(edadmeses,estatura);
  
           XYSeriesCollection datasetlong=new XYSeriesCollection();
           datasetlong.addSeries(primerpercentillong);
           datasetlong.addSeries(segundopercentillong);
           datasetlong.addSeries(tercerpercentillong);
           datasetlong.addSeries(cuartopercentillong);
           datasetlong.addSeries(quintopercentillong);
           datasetlong.addSeries(resultadolong);
           JFreeChart graficalongnina=ChartFactory.createXYLineChart("GRAFICA DE ESTATURA NIÑAS MENORES DE 5 AÑOS", " Edad por meses", "Estatura(cm)", datasetlong, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plotlong=graficalongnina.getXYPlot();
           XYLineAndShapeRenderer rendererlong=new XYLineAndShapeRenderer();
           rendererlong.setSeriesPaint(0,Color.RED);
           rendererlong.setSeriesStroke(0, new BasicStroke(1.0f));
           rendererlong.setSeriesPaint(1,Color.ORANGE);
           rendererlong.setSeriesStroke(1, new BasicStroke(1.0f));
           rendererlong.setSeriesPaint(2,Color.GREEN);
           rendererlong.setSeriesStroke(2, new BasicStroke(1.0f));
           rendererlong.setSeriesPaint(3,Color.orange);
           rendererlong.setSeriesStroke(3, new BasicStroke(1.0f));
           rendererlong.setSeriesPaint(4,Color.RED);
           rendererlong.setSeriesStroke(4, new BasicStroke(1.0f));
           rendererlong.setSeriesPaint(5,Color.BLACK);
           rendererlong.setSeriesStroke(5, new BasicStroke(5.0f));
           
           plotlong.setRenderer(rendererlong);


ChartUtilities.saveChartAsJPEG(new File("C:/xampp/htdocs/Refrikid/web/graficalongnina0a5.jpg"), graficalongnina, 900,400);
                %>
     
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col-12">
                                <h3 class="card-title">Reporte de Peso</h3>
                                <img src="graficapesonina0a5.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                            <div class="col-12 ">
                                <h3 class="card-title">Reporte de Estatura</h3>
                                <img src="graficalongnina0a5.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                        </div>
                        <div class="d-flex mt-5 align-items-top">
                            <div class="mb-0 flex-grow">
                                <p class="mb-0 font-weight-light">
                                    Según el resultado de la OMS el beneficiario se encuentra en un estado optimo de crecimiento entre el segundo y cuarto percentil de la grafíca.
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
          
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="d-flex mt-9 align-items-top">
                            <div class="mb-0 flex-grow">
                                <p class="mb-0 font-weight-light">
                                    ¿Desea comentar el estado del reporte visualzado en las graficas?    |     Diligencie el siguiente fomulario con los datos solicitados.
                                    <br><br>
                                </p>
                                    <form class="form-sample" action="resultadocomentario.jsp" method="post">
                                        <div class="table-responsive">
                                            <div class="form-group">
                                                <label for="exampleInputUsername1">Asunto</label>
                                                <input type="text" name="asunto" class="form-control" id="exampleInputUsername1" placeholder="Asunto"/>
                                            </div>
                                            <div class="form-group">
                                                 <label for="exampleInputUsername2">Mensaje</label>
                                                <textarea name="mensaje" cols="40" rows="5" placeholder="Mensaje" id="exampleInputUsername2" class="form-control"></textarea>
                                            </div>      
                                        </div>    
                                            <a href="reporte.jsp"><button type="reset" class="btn btn-gradient-warning btn-rounded btn-fw">Volver</button></a>
                                            <input type="submit" class="btn btn-gradient-success btn-rounded btn-fw" value="Enviar"/>
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> 
       
          
        <!-- content-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
          <div class="d-sm-flex justify-content-center justify-content-sm-between">
             <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2018. Todos los derechos reservados.</span>
          </div>
        </footer>
        <!-- partial -->
      </div>
      <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <!-- plugins:js -->
  <script src="vendors/js/vendor.bundle.base.js"></script>
  <script src="vendors/js/vendor.bundle.addons.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page-->
  <!-- End plugin js for this page-->
  <!-- inject:js -->
  <script src="js/off-canvas.js"></script>
  <script src="js/misc.js"></script>
  <!-- endinject -->
  <!-- Custom js for this page-->
  <script src="js/dashboard.js"></script>
  <!-- End custom js for this page-->
</body>

</html>

