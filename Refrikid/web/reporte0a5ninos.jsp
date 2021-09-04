<%-- 
    Document   : reporte0a5
    Created on : 28-nov-2018, 18:31:00
    Author     : FAMILIA NOVOA
--%>

<%@page import="java.io.File"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Niños 0 - 5</title>
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
                            int edad=Integer.parseInt(request.getAttribute("edad").toString());
                            double peso=Double.parseDouble(request.getAttribute("peso").toString());
                            double estatura=Double.parseDouble(request.getAttribute("talla").toString());
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
                                        <td>Masculino</td>
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
           primerpercentil.add(2,4.1);
           primerpercentil.add(4,5.8);
           primerpercentil.add(6,6.5);
           primerpercentil.add(8,7);
           primerpercentil.add(10,7.5);
           primerpercentil.add(12,7.9);
           primerpercentil.add(14,8.1);
           primerpercentil.add(16,8.5);
           primerpercentil.add(18,8.9);
           primerpercentil.add(20,9.1);
           primerpercentil.add(22,9.5);
           primerpercentil.add(24,9.8);
           primerpercentil.add(26,10.1);
           primerpercentil.add(28,10.5);
           primerpercentil.add(30,10.8);
           primerpercentil.add(32,11);
           primerpercentil.add(34,11.2);
           primerpercentil.add(36,11.5);
           primerpercentil.add(38,11.8);
           primerpercentil.add(40,12);
           primerpercentil.add(42,12.1);
           primerpercentil.add(44,12.5);
           primerpercentil.add(46,12.8);
           primerpercentil.add(48,13);
           primerpercentil.add(50,13.1);
           primerpercentil.add(52,13.3);
           primerpercentil.add(54,13.5);
           primerpercentil.add(56,13.8);
           primerpercentil.add(58,14);
           primerpercentil.add(60,14.2);
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(0, 2.9);
           segundopercentil.add(2, 4.8);
           segundopercentil.add(4, 6.2);
           segundopercentil.add(6, 7.1);
           segundopercentil.add(8, 7.8);
           segundopercentil.add(10, 8.1);
           segundopercentil.add(12, 8.5);
           segundopercentil.add(14, 9);
           segundopercentil.add(16, 9.5);
           segundopercentil.add(18, 9.8);
           segundopercentil.add(20, 10.1);
           segundopercentil.add(22, 10.5);
           segundopercentil.add(24, 10.9);
           segundopercentil.add(26, 11.1);
           segundopercentil.add(28, 11.5);
           segundopercentil.add(30, 11.7);
           segundopercentil.add(32, 12.1);
           segundopercentil.add(34, 12.5);
           segundopercentil.add(36, 12.7);
           segundopercentil.add(38, 13);
           segundopercentil.add(40, 13.2);
           segundopercentil.add(42, 13.5);
           segundopercentil.add(44, 13.8);
           segundopercentil.add(46, 14);
           segundopercentil.add(48, 14.2);
           segundopercentil.add(50, 14.5);
           segundopercentil.add(52, 14.7);
           segundopercentil.add(54, 15.1);
           segundopercentil.add(56, 15.5);
           segundopercentil.add(58, 15.7);
           segundopercentil.add(60, 16);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(0,3.5);
           tercerpercentil.add(2,5.7);
           tercerpercentil.add(4,7);
           tercerpercentil.add(6,8);
           tercerpercentil.add(8,8.7);
           tercerpercentil.add(10,9.1);
           tercerpercentil.add(12,9.7);
           tercerpercentil.add(14,10.1);
           tercerpercentil.add(16,10.5);
           tercerpercentil.add(18,10.9);
           tercerpercentil.add(20,11.3);
           tercerpercentil.add(22,11.7);
           tercerpercentil.add(24,12.2);
           tercerpercentil.add(26,12.6);
           tercerpercentil.add(28,12.9);
           tercerpercentil.add(30,13.2);
           tercerpercentil.add(32,13.7);
           tercerpercentil.add(34,14);
           tercerpercentil.add(36,14.3);
           tercerpercentil.add(38,14.8);
           tercerpercentil.add(40,15);
           tercerpercentil.add(42,15.3);
           tercerpercentil.add(44,15.7);
           tercerpercentil.add(46,16);
           tercerpercentil.add(48,16.2);
           tercerpercentil.add(50,16.7);
           tercerpercentil.add(52,17);
           tercerpercentil.add(54,17.2);
           tercerpercentil.add(56,17.7);
           tercerpercentil.add(58,18);
           tercerpercentil.add(60,18.2);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(0, 3.9);
           cuartopercentil.add(2, 6.2);
           cuartopercentil.add(4, 7.8);
           cuartopercentil.add(6, 8.8);
           cuartopercentil.add(8, 9.7);
           cuartopercentil.add(10, 10.2);
           cuartopercentil.add(12, 10.7);
           cuartopercentil.add(14, 11.3);
           cuartopercentil.add(16, 11.7);
           cuartopercentil.add(18, 12.2);
           cuartopercentil.add(20, 12.7);
           cuartopercentil.add(22, 13.2);
           cuartopercentil.add(24, 13.7);
           cuartopercentil.add(26, 14.1);
           cuartopercentil.add(28, 14.6);
           cuartopercentil.add(30, 15);
           cuartopercentil.add(32, 15.3);
           cuartopercentil.add(34, 15.9);
           cuartopercentil.add(36, 16.2);
           cuartopercentil.add(38, 16.7);
           cuartopercentil.add(40, 17);
           cuartopercentil.add(42, 17.3);
           cuartopercentil.add(44, 17.9);
           cuartopercentil.add(46, 18.2);
           cuartopercentil.add(48, 18.7);
           cuartopercentil.add(50, 19);
           cuartopercentil.add(52, 19.5);
           cuartopercentil.add(54, 19.9);
           cuartopercentil.add(56, 20.2);
           cuartopercentil.add(58, 20.7);
           cuartopercentil.add(60,21.1 );
                      
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(0, 4.5);
           quintopercentil.add(2, 7);
           quintopercentil.add(4, 8.7);
           quintopercentil.add(6, 9.8);
           quintopercentil.add(8, 10.6);
           quintopercentil.add(10, 11.2);
           quintopercentil.add(12, 11.9);
           quintopercentil.add(14, 12.3);
           quintopercentil.add(16, 12.9);
           quintopercentil.add(18, 13.4);
           quintopercentil.add(20, 14);
           quintopercentil.add(22, 14.6);
           quintopercentil.add(24, 15.1);
           quintopercentil.add(26, 15.6);
           quintopercentil.add(28, 16.1);
           quintopercentil.add(30, 16.6);
           quintopercentil.add(32, 17.1);
           quintopercentil.add(34, 17.6);
           quintopercentil.add(36, 18);
           quintopercentil.add(38, 18.3);
           quintopercentil.add(40, 19);
           quintopercentil.add(42, 19.3);
           quintopercentil.add(44, 19.9);
           quintopercentil.add(46, 20.3);
           quintopercentil.add(48, 20.9);
           quintopercentil.add(50, 21.3);
           quintopercentil.add(52, 21.8);
           quintopercentil.add(54, 22.3);
           quintopercentil.add(56, 22.7);
           quintopercentil.add(58, 23.2);
            quintopercentil.add(60, 23.8);
           
            XYSeries resultado=new XYSeries("RESULTADO");
           resultado.add(edadmeses,peso);
            
           
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           dataset.addSeries(resultado);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑOS MENORES DE 5 AÑOS", "Peso por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plot=graficapesonino.getXYPlot();
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
           renderer.setSeriesPaint(5,Color.black);
           renderer.setSeriesStroke(5, new BasicStroke(5.0f));

           
           plot.setRenderer(renderer);
    
  
  //ChartUtilities.saveChartAsJPEG(new File("H:/ADSI/Proyecto/Proyecto/Refrikid/web/grafica.jpg"), graficapesonino, 900,400);
   ChartUtilities.saveChartAsJPEG(new File("/Applications/XAMPP/xamppfiles/htdocs/Refrikid/web/grafica.jpg"), graficapesonino, 900,400);


XYSeries primerpercentillong = new XYSeries ("Primer Percentil");
           primerpercentillong.add (0,47);
           primerpercentillong.add (2,55);
           primerpercentillong.add (4,60);
           primerpercentillong.add (6,64);
           primerpercentillong.add (8, 66.5);
           primerpercentillong.add (10,69);
           primerpercentillong.add (12,71);
           
           primerpercentillong.add (14,73);
           primerpercentillong.add (16,75);
           primerpercentillong.add (18,77);
           primerpercentillong.add (20,79);
           primerpercentillong.add (22,80.5);
           primerpercentillong.add (24,82);
           
           primerpercentillong.add (26,83);
           primerpercentillong.add (28,84);
           primerpercentillong.add (30,86);
           primerpercentillong.add (32,87);
           primerpercentillong.add (34,88);
           primerpercentillong.add (36,89);

           primerpercentillong.add (38,90);
           primerpercentillong.add (40,91);
           primerpercentillong.add (42,92);
           primerpercentillong.add (44,93);
           primerpercentillong.add (46,94);
           primerpercentillong.add (48,95);

          primerpercentillong.add (50,96);
           primerpercentillong.add (52,97);
           primerpercentillong.add (54,98);
           primerpercentillong.add (56,99);
           primerpercentillong.add (58,100);
           primerpercentillong.add (60,101);
           
           XYSeries segundopercentillong = new XYSeries ("Segundo Percentil");
           segundopercentillong.add (0, 48);
           segundopercentillong.add (2, 56);
           segundopercentillong.add (4, 62);
           segundopercentillong.add (6, 66);
           segundopercentillong.add (8, 68);
           segundopercentillong.add (10, 71);
           segundopercentillong.add (12, 73);
           
           segundopercentillong.add (14, 75.5);
           segundopercentillong.add (16, 77.5);
           segundopercentillong.add (18, 79.5);
           segundopercentillong.add (20, 81);
           segundopercentillong.add (22, 83);
           segundopercentillong.add (24, 85);
           
           segundopercentillong.add (26, 86);
           segundopercentillong.add (28, 87);
           segundopercentillong.add (30, 88.5);
           segundopercentillong.add (32, 90);
           segundopercentillong.add (34, 91);
           segundopercentillong.add (36, 92);
           
           segundopercentillong.add (38, 93.5);
           segundopercentillong.add (40, 95);
           segundopercentillong.add (42, 96);
           segundopercentillong.add (44, 97);
           segundopercentillong.add (46, 98);
           segundopercentillong.add (48, 99);
           
           segundopercentillong.add (50, 100);
           segundopercentillong.add (52, 101);
           segundopercentillong.add (54, 102);
           segundopercentillong.add (56, 103);
           segundopercentillong.add (58, 104);
           segundopercentillong.add (60, 105);
           XYSeries tercerpercentillong = new XYSeries ("Tercer Percentil");
           tercerpercentillong.add (0,50);
           tercerpercentillong.add (2,59);
           tercerpercentillong.add (4,64);
           tercerpercentillong.add (6,68);
           tercerpercentillong.add (8,71);
           tercerpercentillong.add (10,73);
           tercerpercentillong.add (12,76);
           
           tercerpercentillong.add (14,78);
           tercerpercentillong.add (16,80);
           tercerpercentillong.add (18,82);
           tercerpercentillong.add (20,84);
           tercerpercentillong.add (22,86);
           tercerpercentillong.add (24,88);
           
           tercerpercentillong.add (26,89);
           tercerpercentillong.add (28,90.5);
           tercerpercentillong.add (30,92);
           tercerpercentillong.add (32,94);
           tercerpercentillong.add (34,95);
           tercerpercentillong.add (36,96);
           
           tercerpercentillong.add (38,97);
           tercerpercentillong.add (40,99);
           tercerpercentillong.add (42,100);
           tercerpercentillong.add (44,101);
           tercerpercentillong.add (46,102);
           tercerpercentillong.add (48,103.5);
           
           tercerpercentillong.add (50,104.5);
           tercerpercentillong.add (52,105.5);
           tercerpercentillong.add (54,107);
           tercerpercentillong.add (56,108);
           tercerpercentillong.add (58,109);
           tercerpercentillong.add (60,110);
           XYSeries cuartopercentillong = new XYSeries ("Cuarto Percentil");
           cuartopercentillong.add (0, 52);
           cuartopercentillong.add (2, 61);
           cuartopercentillong.add (4, 66);
           cuartopercentillong.add (6, 70);
           cuartopercentillong.add (8, 73);
           cuartopercentillong.add (10,76);
           cuartopercentillong.add (12,78);
           
           cuartopercentillong.add (14, 81);
           cuartopercentillong.add (16, 83);
           cuartopercentillong.add (18, 85);
           cuartopercentillong.add (20, 87);
           cuartopercentillong.add (22, 89);
           cuartopercentillong.add (24, 91);
           
           cuartopercentillong.add (26, 92);
           cuartopercentillong.add (28, 94);
           cuartopercentillong.add (30, 96);
           cuartopercentillong.add (32, 97);
           cuartopercentillong.add (34, 98.5);
           cuartopercentillong.add (36, 100);
           
           cuartopercentillong.add (38, 101);
           cuartopercentillong.add (40, 103);
           cuartopercentillong.add (42, 104);
           cuartopercentillong.add (44, 105);
           cuartopercentillong.add (46, 106.5);
           cuartopercentillong.add (48, 107.5);
           
           cuartopercentillong.add (50, 109);
           cuartopercentillong.add (52, 110);
           cuartopercentillong.add (54, 111);
           cuartopercentillong.add (56, 112.5);
           cuartopercentillong.add (58, 113.5);
           cuartopercentillong.add (60, 115);
                      
           XYSeries quintopercentillong = new XYSeries ("Quinto Percentil");
           quintopercentillong.add (0, 54);
           quintopercentillong.add (2, 62);
           quintopercentillong.add (4, 68);
           quintopercentillong.add (6, 72);
           quintopercentillong.add (8, 75);
           quintopercentillong.add (10, 78);
           quintopercentillong.add (12, 80);
           
           quintopercentillong.add (14, 83);
           quintopercentillong.add (16, 85);
           quintopercentillong.add (18, 87);
           quintopercentillong.add (20, 90);
           quintopercentillong.add (22, 92);
           quintopercentillong.add (24, 94);
           
           quintopercentillong.add (26, 95);
           quintopercentillong.add (28, 97);
           quintopercentillong.add (30, 98.5);
           quintopercentillong.add (32, 100);
           quintopercentillong.add (34, 102);
           quintopercentillong.add (36, 103);
           
           quintopercentillong.add (38, 105);
           quintopercentillong.add (40, 106);
           quintopercentillong.add (42, 107);
           quintopercentillong.add (44, 109);
           quintopercentillong.add (46, 110);
           quintopercentillong.add (48, 111);
           
           quintopercentillong.add (50, 112.5);
           quintopercentillong.add (52, 113.5);
           quintopercentillong.add (54, 115);
           quintopercentillong.add (56, 116);
           quintopercentillong.add (58, 117);
           quintopercentillong.add (60, 119);
  
           XYSeries resultadolong=new XYSeries("Resultado");
           resultadolong.add(edadmeses,estatura);
           System.out.println(estatura);
            XYSeriesCollection datasetlong = new XYSeriesCollection ();
           datasetlong.addSeries (primerpercentillong);
           datasetlong.addSeries (segundopercentillong);
           datasetlong.addSeries (tercerpercentillong);
           datasetlong.addSeries (cuartopercentillong);
           datasetlong.addSeries (quintopercentillong);
           datasetlong.addSeries(resultadolong);
           JFreeChart graficalongnino = ChartFactory.createXYLineChart ("GRAFICA DE ESTATURA NIÑOS MENORES DE 5 AÑOS", "Edad por meses", "Estatura (cm)", datasetlong, PlotOrientation.VERTICAL, true, true, false);
           XYPlot plotlong = graficalongnino.getXYPlot ();
            XYLineAndShapeRenderer rendererlong = new XYLineAndShapeRenderer ();
           rendererlong.setSeriesPaint (0, Color.RED);
           rendererlong.setSeriesStroke (0, new BasicStroke (1.0f));
           rendererlong.setSeriesPaint (1, Color.ORANGE);
           rendererlong.setSeriesStroke (1, new BasicStroke (1.0f));
           rendererlong.setSeriesPaint (2, Color.GREEN);
           rendererlong.setSeriesStroke (2, new BasicStroke (1.0f));
           rendererlong.setSeriesPaint (3, Color.orange);
           rendererlong.setSeriesStroke (3, new BasicStroke (1.0f));
           rendererlong.setSeriesPaint (4, Color.RED);
           rendererlong.setSeriesStroke (4, new BasicStroke (1.0f));
           rendererlong.setSeriesPaint (5, Color.BLACK);
           rendererlong.setSeriesStroke (5, new BasicStroke (5.0f));
           
           plotlong.setRenderer (rendererlong);
           ChartUtilities.saveChartAsJPEG(new File("/Applications/XAMPP/xamppfiles/htdocs/Refrikid/web/graficalong0a5.jpg"), graficalongnino, 900,400);
  %>
    
    <div>
        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col-12">
                                <h3 class="card-title">Reporte de Peso</h3>
                                <img src="grafica.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                            <div class="col-12 ">
                                <h3 class="card-title">Reporte de Estatura</h3>
                                <img src="graficalong0a5.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                        </div>
                        <div class="d-flex mt-5 align-items-top">
                            <div class="mb-0 flex-grow">
                                <p class="mb-0 font-weight-light">
                                     Segun el resultado de la OMS el beneficiario se encuentra en un estado optimo de crecimiento entre el segundo y cuarto percentil de la grafica.
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

