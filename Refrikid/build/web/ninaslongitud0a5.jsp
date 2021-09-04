<%-- 
    Document   : ninaslongitud0a5
    Created on : 28-nov-2018, 21:42:15
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="java.awt.Color"%>
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
           primerpercentil.add(0,46);
           primerpercentil.add(2,53);
           primerpercentil.add(4,58);
           primerpercentil.add(6,61.5);
           primerpercentil.add(8 ,64);
           primerpercentil.add(10,66);
           primerpercentil.add(12,69);
           
           primerpercentil.add(14,71);
           primerpercentil.add(16,73);
           primerpercentil.add(18,75);
           primerpercentil.add(20,77);
           primerpercentil.add(22,78.5);
           primerpercentil.add(24,80);
           
           primerpercentil.add(26,81.5);
           primerpercentil.add(28,82.5);
           primerpercentil.add(30,84);
           primerpercentil.add(32,85);
           primerpercentil.add(34,87);
           primerpercentil.add(36,88);

           primerpercentil.add(38,89);
           primerpercentil.add(40,90);
           primerpercentil.add(42,91);
           primerpercentil.add(44,92);
           primerpercentil.add(46,93);
           primerpercentil.add(48,94);

           primerpercentil.add(50,96);
           primerpercentil.add(52,97);
           primerpercentil.add(54,98);
           primerpercentil.add(56,99);
           primerpercentil.add(58,100);
           primerpercentil.add(60,101);
           
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(0, 47);
           segundopercentil.add(2, 55);
           segundopercentil.add(4, 60);
           segundopercentil.add(6, 63);
           segundopercentil.add(8, 66);
           segundopercentil.add(10, 69);
           segundopercentil.add(12, 71);
           
           segundopercentil.add(14, 74);
           segundopercentil.add(16, 76);
           segundopercentil.add(18, 78);
           segundopercentil.add(20, 80);
           segundopercentil.add(22, 81);
           segundopercentil.add(24, 83);
           
           segundopercentil.add(26, 84);
           segundopercentil.add(28, 86);
           segundopercentil.add(30, 87);
           segundopercentil.add(32, 88);
           segundopercentil.add(34, 90);
           segundopercentil.add(36, 91);
           
           segundopercentil.add(38, 93);
           segundopercentil.add(40, 94);
           segundopercentil.add(42, 95);
           segundopercentil.add(44, 96);
           segundopercentil.add(46, 97);
           segundopercentil.add(48, 98);
           
           segundopercentil.add(50, 99);
           segundopercentil.add(52, 101);
           segundopercentil.add(54, 102);
           segundopercentil.add(56, 103);
           segundopercentil.add(58, 104);
           segundopercentil.add(60, 105);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(0,49);
           tercerpercentil.add(2,57);
           tercerpercentil.add(4,62);
           tercerpercentil.add(6,66);
           tercerpercentil.add(8,69);
           tercerpercentil.add(10,71);
           tercerpercentil.add(12,74);
           
           tercerpercentil.add(14,76);
           tercerpercentil.add(16,79);
           tercerpercentil.add(18,81);
           tercerpercentil.add(20,83);
           tercerpercentil.add(22,85);
           tercerpercentil.add(24,86);
           
           tercerpercentil.add(26,87);
           tercerpercentil.add(28,89);
           tercerpercentil.add(30,91);
           tercerpercentil.add(32,93);
           tercerpercentil.add(34,94);
           tercerpercentil.add(36,95);
           
           tercerpercentil.add(38,96);
           tercerpercentil.add(40,98);
           tercerpercentil.add(42,99);
           tercerpercentil.add(44,100);
           tercerpercentil.add(46,101);
           tercerpercentil.add(48,103);
           
           tercerpercentil.add(50,104);
           tercerpercentil.add(52,105);
           tercerpercentil.add(54,106);
           tercerpercentil.add(56,107);
           tercerpercentil.add(58,108);
           tercerpercentil.add(60,109.5);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(0, 51);
           cuartopercentil.add(2, 59);
           cuartopercentil.add(4, 64);
           cuartopercentil.add(6, 68);
           cuartopercentil.add(8, 71);
           cuartopercentil.add(10,74);
           cuartopercentil.add(12,77);
           
           cuartopercentil.add(14, 79);
           cuartopercentil.add(16, 82);
           cuartopercentil.add(18, 84);
           cuartopercentil.add(20, 86);
           cuartopercentil.add(22, 88);
           cuartopercentil.add(24, 90);
           
           cuartopercentil.add(26, 91);
           cuartopercentil.add(28, 93);
           cuartopercentil.add(30, 94);
           cuartopercentil.add(32, 96);
           cuartopercentil.add(34, 97);
           cuartopercentil.add(36, 99);
           
           cuartopercentil.add(38, 101);
           cuartopercentil.add(40, 102);
           cuartopercentil.add(42, 103);
           cuartopercentil.add(44, 105);
           cuartopercentil.add(46, 106);
           cuartopercentil.add(48, 107);
           
           cuartopercentil.add(50, 108);
           cuartopercentil.add(52, 110);
           cuartopercentil.add(54, 111);
           cuartopercentil.add(56, 112);
           cuartopercentil.add(58, 113);
           cuartopercentil.add(60, 114.5);
                      
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(0, 53);
           quintopercentil.add(2, 61);
           quintopercentil.add(4, 66);
           quintopercentil.add(6, 70);
           quintopercentil.add(8, 73);
           quintopercentil.add(10, 76);
           quintopercentil.add(12, 79);
           
           quintopercentil.add(14, 81);
           quintopercentil.add(16, 84);
           quintopercentil.add(18, 86);
           quintopercentil.add(20, 88);
           quintopercentil.add(22, 90);
           quintopercentil.add(24, 92);
           
           quintopercentil.add(26, 94);
           quintopercentil.add(28, 96);
           quintopercentil.add(30, 97);
           quintopercentil.add(32, 99);
           quintopercentil.add(34, 101);
           quintopercentil.add(36, 102);
           
           quintopercentil.add(38, 104);
           quintopercentil.add(40, 105);
           quintopercentil.add(42, 107);
           quintopercentil.add(44, 108);
           quintopercentil.add(46, 109);
           quintopercentil.add(48, 111);
           
           quintopercentil.add(50, 112);
           quintopercentil.add(52, 113.5);
           quintopercentil.add(54, 115);
           quintopercentil.add(56, 116);
           quintopercentil.add(58, 117);
           quintopercentil.add(60, 118.5);
  
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE ESTATURA NIÑAS MENORES DE 5 AÑOS", " Edad por meses", "Estatura(cm)", dataset, PlotOrientation.VERTICAL, true,true, false);
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
