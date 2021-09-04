<%-- 
    Document   : reporteninasmax
    Created on : 30-nov-2018, 19:23:38
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.File"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reporte Niñas Mayores de 5</title>
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
           primerpercentil.add(60,14);
           primerpercentil.add(72,16);
           primerpercentil.add(84,18);
           primerpercentil.add(96,20);
           primerpercentil.add(108,22);
           
           primerpercentil.add(120,24);
           primerpercentil.add(132,27);
           primerpercentil.add(144,30);
           primerpercentil.add(156,33);
           primerpercentil.add(168,36.5);
           primerpercentil.add(180,40);
           
           primerpercentil.add(192,42);
           primerpercentil.add(204,43);
           primerpercentil.add(216,44);
           primerpercentil.add(228,45);          
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(60, 16);
           segundopercentil.add(72, 18);
           segundopercentil.add(84, 20.5);
           segundopercentil.add(96, 23);
           segundopercentil.add(108,26);           
           segundopercentil.add(120, 29);
           segundopercentil.add(132, 32);           
           segundopercentil.add(144, 37);
           segundopercentil.add(156, 40);
           
           segundopercentil.add(168, 44);           
           segundopercentil.add(180, 46.5);           
           segundopercentil.add(192, 48.5);
           segundopercentil.add(204, 50);
           segundopercentil.add(216, 51);
           segundopercentil.add(228, 52);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(60,18);
           tercerpercentil.add(72,20);
           tercerpercentil.add(84,23);
           tercerpercentil.add(96,26);
           tercerpercentil.add(108,29);           
           tercerpercentil.add(120,33);
           tercerpercentil.add(132,37);
           tercerpercentil.add(144,42);
           tercerpercentil.add(156,46);
           
           tercerpercentil.add(168,49);           
           tercerpercentil.add(180,52);           
           tercerpercentil.add(192,54);
           tercerpercentil.add(204,55);
           tercerpercentil.add(216,56);
           tercerpercentil.add(228,57);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(60, 22);
           cuartopercentil.add(72, 25);
           cuartopercentil.add(84, 29);
           cuartopercentil.add(96, 33);
           cuartopercentil.add(108, 38);           
           cuartopercentil.add(120,43.5);
           cuartopercentil.add(132,49.5);
           cuartopercentil.add(144, 55.5);
           cuartopercentil.add(156, 61);
           
           cuartopercentil.add(168, 65.5);           
           cuartopercentil.add(180, 68.5);           
           cuartopercentil.add(192, 70.5);
           cuartopercentil.add(204, 71.5);
           cuartopercentil.add(216, 73);
           cuartopercentil.add(228, 74); 
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(60, 25);
           quintopercentil.add(72, 29);
           quintopercentil.add(84, 33);
           quintopercentil.add(96, 38);
           quintopercentil.add(108, 44);           
           quintopercentil.add(120, 51);
           quintopercentil.add(132, 58);           
           quintopercentil.add(144, 65);
           quintopercentil.add(156, 72);
           
           quintopercentil.add(168, 77);           
           quintopercentil.add(180, 81.5);           
           quintopercentil.add(192, 84);
           quintopercentil.add(204, 85.5);
           quintopercentil.add(216, 87.5);
           quintopercentil.add(228, 88.5);
           XYSeries resultado=new XYSeries("RESULTADO");
           resultado.add(edadmeses,peso);
           
           
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           dataset.addSeries(resultado);
           JFreeChart graficapesonina=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑAS  DE 5 A 19 AÑOS", " Edad por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
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
           ChartUtilities.saveChartAsJPEG(new File("C:/xampp/htdocs/Refrikid/web/graficapesoninamax5.jpg"), graficapesonina, 900,400);
            XYSeries primerpercentillong=new XYSeries("Primer Percentil");
           primerpercentillong.add(60,101);
           primerpercentillong.add(72,105);
           primerpercentillong.add(84,110);
           primerpercentillong.add(96,115);
           primerpercentillong.add(108,121);
           primerpercentillong.add(120,126);
           primerpercentillong.add(132,133);
           primerpercentillong.add(144,139);
           primerpercentillong.add(156,143);
           primerpercentillong.add(168,146);
           primerpercentillong.add(180,148);
           primerpercentillong.add(192,149.7);
           primerpercentillong.add(204,150);
           primerpercentillong.add(216,150.2);
           primerpercentillong.add(228,150.5);          
           XYSeries segundopercentillong=new XYSeries("Segundo Percentil");
           segundopercentillong.add(60, 105);
           segundopercentillong.add(72, 110);
           segundopercentillong.add(84, 115);
           segundopercentillong.add(96, 120);
           segundopercentillong.add(108, 126);
           
           segundopercentillong.add(120, 132);
           segundopercentillong.add(132, 138);           
           segundopercentillong.add(144, 144);
           segundopercentillong.add(156, 149);
           segundopercentillong.add(168, 153);
           segundopercentillong.add(180, 154.9);
           
           segundopercentillong.add(192, 155.1);
           segundopercentillong.add(204, 155.4);
           segundopercentillong.add(216, 155.8);
           segundopercentillong.add(228, 156.1);
           XYSeries tercerpercentillong=new XYSeries("Tercer Percentil");
           tercerpercentillong.add(60,109.5);
           tercerpercentillong.add(72,115);
           tercerpercentillong.add(84,121);
           tercerpercentillong.add(96,126);
           tercerpercentillong.add(108,133);
           
           tercerpercentillong.add(120,139);
           tercerpercentillong.add(132,145);
           tercerpercentillong.add(144,151);
           tercerpercentillong.add(156,156);
           tercerpercentillong.add(168,160);           
           tercerpercentillong.add(180,162);
           
           tercerpercentillong.add(192,163);
           tercerpercentillong.add(204,163.5);
           tercerpercentillong.add(216,164);
           tercerpercentillong.add(228,164.5);
           XYSeries cuartopercentillong=new XYSeries("Cuarto Percentil");
           cuartopercentillong.add(60, 114.5);
           cuartopercentillong.add(72, 120);
           cuartopercentillong.add(84, 126);
           cuartopercentillong.add(96, 133);
           cuartopercentillong.add(108, 139);
           
           cuartopercentillong.add(120,145);
           cuartopercentillong.add(132,152);
           cuartopercentillong.add(144, 158);
           cuartopercentillong.add(156, 164);
           cuartopercentillong.add(168, 167);
           cuartopercentillong.add(180, 169);
           
           cuartopercentillong.add(192, 169.7);
           cuartopercentillong.add(204, 169.8);
           cuartopercentillong.add(216, 169.9);
           cuartopercentillong.add(228, 170); 
           XYSeries quintopercentillong=new XYSeries("Quinto Percentil");
           quintopercentillong.add(60, 118.5);
           quintopercentillong.add(72, 125);
           quintopercentillong.add(84, 131);
           quintopercentillong.add(96, 137);
           quintopercentillong.add(108, 144);
           
           quintopercentillong.add(120, 151);
           quintopercentillong.add(132, 157);           
           quintopercentillong.add(144, 164);
           quintopercentillong.add(156, 169);
           quintopercentillong.add(168, 172.5);           
           quintopercentillong.add(180, 174.8);
           
           quintopercentillong.add(192, 175.0);
           quintopercentillong.add(204, 175.1);
           quintopercentillong.add(216, 175.2);
           quintopercentillong.add(228, 175.3);
           XYSeries resultadolong=new XYSeries("RESULTADO");
           resultadolong.add(edadmeses,estatura);
           XYSeriesCollection datasetlong=new XYSeriesCollection();
           datasetlong.addSeries(primerpercentillong);
           datasetlong.addSeries(segundopercentillong);
           datasetlong.addSeries(tercerpercentillong);
           datasetlong.addSeries(cuartopercentillong);
           datasetlong.addSeries(quintopercentillong);
           datasetlong.addSeries(resultadolong);
           JFreeChart graficalongnina=ChartFactory.createXYLineChart("GRAFICA DE ESTATURA NIÑAS MENORES DE 5 A 19 AÑOS", " Edad por meses", "Estatura(cm)", datasetlong, PlotOrientation.VERTICAL, true,true, false);
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
            ChartUtilities.saveChartAsJPEG(new File("C:/xampp/htdocs/Refrikid/web/graficalongninamax5.jpg"), graficalongnina, 900,400);

           %>

        <div class="row">
            <div class="col-12 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="row mt-3">
                            <div class="col-12">
                                <h3 class="card-title">Reporte de Peso</h3>
                                <img src="graficapesoninamax5.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                            <div class="col-12 ">
                                <h3 class="card-title">Reporte de Estatura</h3>
                                <img src="graficalongninamax5.jpg" class="mb-2 mw-100 w-100 rounded" alt="image">
                            </div>
                        </div>
                        <div class="d-flex mt-5 align-items-top">
                            <div class="mb-0 flex-grow">
                                <p class="mb-0 font-weight-light">
                                     Según el resultado de la OMS el beneficiario se encuentra en un estado optimo de crecimiento entre el segundo y cuarto percentil de la grafica.
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

          