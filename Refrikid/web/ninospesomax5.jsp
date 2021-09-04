<%-- 
    Document   : ninospesomax5
    Created on : 30-nov-2018, 18:08:50
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.data.xy.XYSeries"%>
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
           primerpercentil.add(60,14.5);
           primerpercentil.add(72,16.5);
           primerpercentil.add(84,18);
           primerpercentil.add(96,20);
           primerpercentil.add(108,22);
           
           primerpercentil.add(120,24);
           primerpercentil.add(132,26);
           primerpercentil.add(144,29);
           primerpercentil.add(156,33);
           primerpercentil.add(168,37);
           primerpercentil.add(180,41);
           
           primerpercentil.add(192,45.5);
           primerpercentil.add(204,49);
           primerpercentil.add(216,51.5);
           primerpercentil.add(228,53);          
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(60, 16);
           segundopercentil.add(72, 19);
           segundopercentil.add(84, 21);
           segundopercentil.add(96, 23);
           segundopercentil.add(108, 26);
           
           segundopercentil.add(120, 28.5);
           segundopercentil.add(132, 32);           
           segundopercentil.add(144, 35.5);
           segundopercentil.add(156, 40);
           segundopercentil.add(168, 45);
           segundopercentil.add(180, 50);
           
           segundopercentil.add(192, 54);
           segundopercentil.add(204, 57);
           segundopercentil.add(216, 60.5);
           segundopercentil.add(228, 62.5);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(60,18.5);
           tercerpercentil.add(72,21);
           tercerpercentil.add(84,23);
           tercerpercentil.add(96,26);
           tercerpercentil.add(108,28.5);
           
           tercerpercentil.add(120,32);
           tercerpercentil.add(132,36);
           tercerpercentil.add(144,40);
           tercerpercentil.add(156,45);
           tercerpercentil.add(168,50.5);           
           tercerpercentil.add(180,56);
           
           tercerpercentil.add(192,61);
           tercerpercentil.add(204,64.5);
           tercerpercentil.add(216,67);
           tercerpercentil.add(228,69);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(60, 21);
           cuartopercentil.add(72, 25);
           cuartopercentil.add(84, 29);
           cuartopercentil.add(96, 32);
           cuartopercentil.add(108, 37);
           
           cuartopercentil.add(120,41.5);
           cuartopercentil.add(132,47);
           cuartopercentil.add(144, 54);
           cuartopercentil.add(156, 60);
           cuartopercentil.add(168, 66);
           cuartopercentil.add(180, 73);
           
           cuartopercentil.add(192, 77);
           cuartopercentil.add(204, 82);
           cuartopercentil.add(216, 85);
           cuartopercentil.add(228, 87); 
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(60, 24);
           quintopercentil.add(72, 28);
           quintopercentil.add(84, 33);
           quintopercentil.add(96, 38);
           quintopercentil.add(108, 43);
           
           quintopercentil.add(120, 49);
           quintopercentil.add(132, 56);           
           quintopercentil.add(144, 62);
           quintopercentil.add(156, 70);
           quintopercentil.add(168, 76);           
           quintopercentil.add(180, 83);
           
           quintopercentil.add(192, 88);
           quintopercentil.add(204, 93);
           quintopercentil.add(216, 97);
           quintopercentil.add(228, 99);
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑOS  DE 5 A 19 AÑOS", " Edad por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
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
