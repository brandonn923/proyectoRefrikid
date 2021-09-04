<%-- 
    Document   : oms0a5
    Created on : 28-nov-2018, 19:53:25
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.BasicStroke"%>
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
           
           
           
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE PESO NIÑOS MENORES DE 5 AÑOS", "Peso por meses", "Peso(kg)", dataset, PlotOrientation.VERTICAL, true,true, false);
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
  ChartUtilities.writeChartAsJPEG(sa, graficapesonino, 500,500);
        %>
        
        
        
        
        
        
    </body>
</html>
