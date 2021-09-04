<%-- 
    Document   : ninaslongitudmax5
    Created on : 28-nov-2018, 21:42:37
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
      <%
          XYSeries primerpercentil=new XYSeries("Primer Percentil");
           primerpercentil.add(60,101);
           primerpercentil.add(72,105);
           primerpercentil.add(84,110);
           primerpercentil.add(96,115);
           primerpercentil.add(108,121);
           primerpercentil.add(120,126);
           primerpercentil.add(132,133);
           primerpercentil.add(144,139);
           primerpercentil.add(156,143);
           primerpercentil.add(168,146);
           primerpercentil.add(180,148);
           primerpercentil.add(192,149.7);
           primerpercentil.add(204,150);
           primerpercentil.add(216,150.2);
           primerpercentil.add(228,150.5);          
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(60, 105);
           segundopercentil.add(72, 110);
           segundopercentil.add(84, 115);
           segundopercentil.add(96, 120);
           segundopercentil.add(108, 126);
           
           segundopercentil.add(120, 132);
           segundopercentil.add(132, 138);           
           segundopercentil.add(144, 144);
           segundopercentil.add(156, 149);
           segundopercentil.add(168, 153);
           segundopercentil.add(180, 154.9);
           
           segundopercentil.add(192, 155.1);
           segundopercentil.add(204, 155.4);
           segundopercentil.add(216, 155.8);
           segundopercentil.add(228, 156.1);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(60,109.5);
           tercerpercentil.add(72,115);
           tercerpercentil.add(84,121);
           tercerpercentil.add(96,126);
           tercerpercentil.add(108,133);
           
           tercerpercentil.add(120,139);
           tercerpercentil.add(132,145);
           tercerpercentil.add(144,151);
           tercerpercentil.add(156,156);
           tercerpercentil.add(168,160);           
           tercerpercentil.add(180,162);
           
           tercerpercentil.add(192,163);
           tercerpercentil.add(204,163.5);
           tercerpercentil.add(216,164);
           tercerpercentil.add(228,164.5);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(60, 114.5);
           cuartopercentil.add(72, 120);
           cuartopercentil.add(84, 126);
           cuartopercentil.add(96, 133);
           cuartopercentil.add(108, 139);
           
           cuartopercentil.add(120,145);
           cuartopercentil.add(132,152);
           cuartopercentil.add(144, 158);
           cuartopercentil.add(156, 164);
           cuartopercentil.add(168, 167);
           cuartopercentil.add(180, 169);
           
           cuartopercentil.add(192, 169.7);
           cuartopercentil.add(204, 169.8);
           cuartopercentil.add(216, 169.9);
           cuartopercentil.add(228, 170); 
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(60, 118.5);
           quintopercentil.add(72, 125);
           quintopercentil.add(84, 131);
           quintopercentil.add(96, 137);
           quintopercentil.add(108, 144);
           
           quintopercentil.add(120, 151);
           quintopercentil.add(132, 157);           
           quintopercentil.add(144, 164);
           quintopercentil.add(156, 169);
           quintopercentil.add(168, 172.5);           
           quintopercentil.add(180, 174.8);
           
           quintopercentil.add(192, 175.0);
           quintopercentil.add(204, 175.1);
           quintopercentil.add(216, 175.2);
           quintopercentil.add(228, 175.3);
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE ESTATURA NIÑAS MENORES DE 5 A 19 AÑOS", " Edad por meses", "Estatura(cm)", dataset, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plot=graficapesonino.getXYPlot();
           XYLineAndShapeRenderer renderer=new XYLineAndShapeRenderer();
           renderer.setSeriesPaint(0,Color.RED);
           renderer.setSeriesStroke(0, new BasicStroke(3.0f));
           renderer.setSeriesPaint(1,Color.ORANGE);
           renderer.setSeriesStroke(1, new BasicStroke(3.0f));
           renderer.setSeriesPaint(2,Color.GREEN);
           renderer.setSeriesStroke(2, new BasicStroke(3.0f));
           renderer.setSeriesPaint(3,Color.orange);
           renderer.setSeriesStroke(3, new BasicStroke(3.0f));
           renderer.setSeriesPaint(4,Color.RED);
           renderer.setSeriesStroke(4, new BasicStroke(3.0f));
           
           
           plot.setRenderer(renderer);
           
  response.setContentType("image/JPG");
  OutputStream sa=response.getOutputStream();
  ChartUtilities.writeChartAsJPEG(sa, graficapesonino, 580,580);
        %>
    </body>
</html>
