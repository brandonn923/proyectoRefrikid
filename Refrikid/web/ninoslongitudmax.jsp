<%-- 
    Document   : ninoslongitudmax
    Created on : 28-nov-2018, 21:31:35
    Author     : FAMILIA NOVOA
--%>

<%@page import="org.jfree.data.xy.XYSeries"%>
<%@page import="org.jfree.data.xy.XYSeriesCollection"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="java.awt.BasicStroke"%>
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
           primerpercentil.add(60,102);
           primerpercentil.add(72,106);
           primerpercentil.add(84,112);
           primerpercentil.add(96,116);
           primerpercentil.add(108,121);
           
           primerpercentil.add(120,126);
           primerpercentil.add(132,130);
           primerpercentil.add(144,135);
           primerpercentil.add(156,142);
           primerpercentil.add(168,149);
           primerpercentil.add(180,154);
           
           primerpercentil.add(192,158);
           primerpercentil.add(204,161);
           primerpercentil.add(216,162);
           primerpercentil.add(228,163);          
           XYSeries segundopercentil=new XYSeries("Segundo Percentil");
           segundopercentil.add(60, 106);
           segundopercentil.add(72, 111);
           segundopercentil.add(84, 116);
           segundopercentil.add(96, 121);
           segundopercentil.add(108, 126);
           
           segundopercentil.add(120, 131);
           segundopercentil.add(132, 136);           
           segundopercentil.add(144, 141);
           segundopercentil.add(156, 149);
           segundopercentil.add(168, 155);
           segundopercentil.add(180, 160);
           
           segundopercentil.add(192, 165);
           segundopercentil.add(204, 167);
           segundopercentil.add(216, 168);
           segundopercentil.add(228, 169);
           XYSeries tercerpercentil=new XYSeries("Tercer Percentil");
           tercerpercentil.add(60,110);
           tercerpercentil.add(72,116);
           tercerpercentil.add(84,122);
           tercerpercentil.add(96,127);
           tercerpercentil.add(108,133);
           
           tercerpercentil.add(120,139);
           tercerpercentil.add(132,143);
           tercerpercentil.add(144,149);
           tercerpercentil.add(156,156);
           tercerpercentil.add(168,163);           
           tercerpercentil.add(180,169);
           
           tercerpercentil.add(192,173);
           tercerpercentil.add(204,175);
           tercerpercentil.add(216,176);
           tercerpercentil.add(228,176.5);
           XYSeries cuartopercentil=new XYSeries("Cuarto Percentil");
           cuartopercentil.add(60, 115);
           cuartopercentil.add(72, 121);
           cuartopercentil.add(84, 127);
           cuartopercentil.add(96, 134);
           cuartopercentil.add(108, 139);
           
           cuartopercentil.add(120,145);
           cuartopercentil.add(132,150);
           cuartopercentil.add(144, 156);
           cuartopercentil.add(156, 164);
           cuartopercentil.add(168, 171);
           cuartopercentil.add(180, 176);
           
           cuartopercentil.add(192, 181);
           cuartopercentil.add(204, 183);
           cuartopercentil.add(216, 184);
           cuartopercentil.add(228, 184.5); 
           XYSeries quintopercentil=new XYSeries("Quinto Percentil");
           quintopercentil.add(60, 119);
           quintopercentil.add(72, 125);
           quintopercentil.add(84, 131);
           quintopercentil.add(96, 138);
           quintopercentil.add(108, 144);
           
           quintopercentil.add(120, 150);
           quintopercentil.add(132, 156);           
           quintopercentil.add(144, 163);
           quintopercentil.add(156, 171);
           quintopercentil.add(168, 178);           
           quintopercentil.add(180, 184);
           
           quintopercentil.add(192, 187);
           quintopercentil.add(204, 189);
           quintopercentil.add(216, 190);
           quintopercentil.add(228, 190.5);
           XYSeriesCollection dataset=new XYSeriesCollection();
           dataset.addSeries(primerpercentil);
           dataset.addSeries(segundopercentil);
           dataset.addSeries(tercerpercentil);
           dataset.addSeries(cuartopercentil);
           dataset.addSeries(quintopercentil);
           JFreeChart graficapesonino=ChartFactory.createXYLineChart("GRAFICA DE ESTATURA NIÑOS MENORES DE 5 A 19 AÑOS", " Edad por meses", "Estatura(cm)", dataset, PlotOrientation.VERTICAL, true,true, false);
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
