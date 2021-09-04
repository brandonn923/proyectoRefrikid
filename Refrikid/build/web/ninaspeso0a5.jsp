<%-- 
    Document   : ninaspeso0a5
    Created on : 28-nov-2018, 21:20:48
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="java.awt.BasicStroke"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
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
           
           
           
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑAS MENORES DE 5 AÑOS", "Edad por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
           XYPlot plot=graficapesonino.getXYPlot();
           XYLineAndShapeRenderer renderer=new XYLineAndShapeRenderer();
           renderer.setSeriesPaint(0,Color.RED);
           renderer.setSeriesStroke(0, new BasicStroke(2.0f));
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
  ChartUtilities.writeChartAsJPEG(sa, graficapesonino, 520,540);
        %>
    </body>
</html>
