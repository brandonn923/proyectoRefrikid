<%-- 
    Document   : ninoslongitud0a5
    Created on : 28-nov-2018, 21:31:08
    Author     : FAMILIA NOVOA
--%>

<%@page import="java.awt.BasicStroke"%>
<%@page import="org.jfree.chart.JFreeChart"%>
<%@page import="org.jfree.chart.plot.PlotOrientation"%>
<%@page import="org.jfree.chart.ChartFactory"%>
<%@page import="org.jfree.chart.renderer.xy.XYLineAndShapeRenderer"%>
<%@page import="org.jfree.chart.plot.XYPlot"%>
<%@page import="java.awt.Color"%>
<%@page import="java.awt.Color"%>
<%@page import="org.jfree.chart.ChartUtilities"%>
<%@page import="java.io.OutputStream"%>
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
          XYSeries primerpercentil = new XYSeries ("Primer Percentil");
           primerpercentil.add (0,47);
           primerpercentil.add (2,55);
           primerpercentil.add (4,60);
           primerpercentil.add (6,64);
           primerpercentil.add (8, 66.5);
           primerpercentil.add (10,69);
           primerpercentil.add (12,71);
           
           primerpercentil.add (14,73);
           primerpercentil.add (16,75);
           primerpercentil.add (18,77);
           primerpercentil.add (20,79);
           primerpercentil.add (22,80.5);
           primerpercentil.add (24,82);
           
           primerpercentil.add (26,83);
           primerpercentil.add (28,84);
           primerpercentil.add (30,86);
           primerpercentil.add (32,87);
           primerpercentil.add (34,88);
           primerpercentil.add (36,89);

           primerpercentil.add (38,90);
           primerpercentil.add (40,91);
           primerpercentil.add (42,92);
           primerpercentil.add (44,93);
           primerpercentil.add (46,94);
           primerpercentil.add (48,95);

           primerpercentil.add (50,96);
           primerpercentil.add (52,97);
           primerpercentil.add (54,98);
           primerpercentil.add (56,99);
           primerpercentil.add (58,100);
           primerpercentil.add (60,101);
           
           XYSeries segundopercentil = new XYSeries ("Segundo Percentil");
           segundopercentil.add (0, 48);
           segundopercentil.add (2, 56);
           segundopercentil.add (4, 62);
           segundopercentil.add (6, 66);
           segundopercentil.add (8, 68);
           segundopercentil.add (10, 71);
           segundopercentil.add (12, 73);
           
           segundopercentil.add (14, 75.5);
           segundopercentil.add (16, 77.5);
           segundopercentil.add (18, 79.5);
           segundopercentil.add (20, 81);
           segundopercentil.add (22, 83);
           segundopercentil.add (24, 85);
           
           segundopercentil.add (26, 86);
           segundopercentil.add (28, 87);
           segundopercentil.add (30, 88.5);
           segundopercentil.add (32, 90);
           segundopercentil.add (34, 91);
           segundopercentil.add (36, 92);
           
           segundopercentil.add (38, 93.5);
           segundopercentil.add (40, 95);
           segundopercentil.add (42, 96);
           segundopercentil.add (44, 97);
           segundopercentil.add (46, 98);
           segundopercentil.add (48, 99);
           
           segundopercentil.add (50, 100);
           segundopercentil.add (52, 101);
           segundopercentil.add (54, 102);
           segundopercentil.add (56, 103);
           segundopercentil.add (58, 104);
           segundopercentil.add (60, 105);
           XYSeries tercerpercentil = new XYSeries ("Tercer Percentil");
           tercerpercentil.add (0,50);
           tercerpercentil.add (2,59);
           tercerpercentil.add (4,64);
           tercerpercentil.add (6,68);
           tercerpercentil.add (8,71);
           tercerpercentil.add (10,73);
           tercerpercentil.add (12,76);
           
           tercerpercentil.add (14,78);
           tercerpercentil.add (16,80);
           tercerpercentil.add (18,82);
           tercerpercentil.add (20,84);
           tercerpercentil.add (22,86);
           tercerpercentil.add (24,88);
           
           tercerpercentil.add (26,89);
           tercerpercentil.add (28,90.5);
           tercerpercentil.add (30,92);
           tercerpercentil.add (32,94);
           tercerpercentil.add (34,95);
           tercerpercentil.add (36,96);
           
           tercerpercentil.add (38,97);
           tercerpercentil.add (40,99);
           tercerpercentil.add (42,100);
           tercerpercentil.add (44,101);
           tercerpercentil.add (46,102);
           tercerpercentil.add (48,103.5);
           
           tercerpercentil.add (50,104.5);
           tercerpercentil.add (52,105.5);
           tercerpercentil.add (54,107);
           tercerpercentil.add (56,108);
           tercerpercentil.add (58,109);
           tercerpercentil.add (60,110);
           XYSeries cuartopercentil = new XYSeries ("Cuarto Percentil");
           cuartopercentil.add (0, 52);
           cuartopercentil.add (2, 61);
           cuartopercentil.add (4, 66);
           cuartopercentil.add (6, 70);
           cuartopercentil.add (8, 73);
           cuartopercentil.add (10,76);
           cuartopercentil.add (12,78);
           
           cuartopercentil.add (14, 81);
           cuartopercentil.add (16, 83);
           cuartopercentil.add (18, 85);
           cuartopercentil.add (20, 87);
           cuartopercentil.add (22, 89);
           cuartopercentil.add (24, 91);
           
           cuartopercentil.add (26, 92);
           cuartopercentil.add (28, 94);
           cuartopercentil.add (30, 96);
           cuartopercentil.add (32, 97);
           cuartopercentil.add (34, 98.5);
           cuartopercentil.add (36, 100);
           
           cuartopercentil.add (38, 101);
           cuartopercentil.add (40, 103);
           cuartopercentil.add (42, 104);
           cuartopercentil.add (44, 105);
           cuartopercentil.add (46, 106.5);
           cuartopercentil.add (48, 107.5);
           
           cuartopercentil.add (50, 109);
           cuartopercentil.add (52, 110);
           cuartopercentil.add (54, 111);
           cuartopercentil.add (56, 112.5);
           cuartopercentil.add (58, 113.5);
           cuartopercentil.add (60, 115);
                      
           XYSeries quintopercentil = new XYSeries ("Quinto Percentil");
           quintopercentil.add (0, 54);
           quintopercentil.add (2, 62);
           quintopercentil.add (4, 68);
           quintopercentil.add (6, 72);
           quintopercentil.add (8, 75);
           quintopercentil.add (10, 78);
           quintopercentil.add (12, 80);
           
           quintopercentil.add (14, 83);
           quintopercentil.add (16, 85);
           quintopercentil.add (18, 87);
           quintopercentil.add (20, 90);
           quintopercentil.add (22, 92);
           quintopercentil.add (24, 94);
           
           quintopercentil.add (26, 95);
           quintopercentil.add (28, 97);
           quintopercentil.add (30, 98.5);
           quintopercentil.add (32, 100);
           quintopercentil.add (34, 102);
           quintopercentil.add (36, 103);
           
           quintopercentil.add (38, 105);
           quintopercentil.add (40, 106);
           quintopercentil.add (42, 107);
           quintopercentil.add (44, 109);
           quintopercentil.add (46, 110);
           quintopercentil.add (48, 111);
           
           quintopercentil.add (50, 112.5);
           quintopercentil.add (52, 113.5);
           quintopercentil.add (54, 115);
           quintopercentil.add (56, 116);
           quintopercentil.add (58, 117);
           quintopercentil.add (60, 119);
  
            XYSeriesCollection dataset = new XYSeriesCollection ();
           dataset.addSeries (primerpercentil);
           dataset.addSeries (segundopercentil);
           dataset.addSeries (tercerpercentil);
           dataset.addSeries (cuartopercentil);
           dataset.addSeries (quintopercentil);
           JFreeChart graficapesonino = ChartFactory.createXYLineChart ("GRAFICA DE ESTATURA NIÑOS MENORES DE 5 AÑOS", "Edad por meses", "Estatura (cm)", dataset, PlotOrientation.VERTICAL, true, true, false);
           XYPlot plot = graficapesonino.getXYPlot ();
            XYLineAndShapeRenderer renderer = new XYLineAndShapeRenderer ();
           renderer.setSeriesPaint (0, Color.RED);
           renderer.setSeriesStroke (0, new BasicStroke (3.0f));
           renderer.setSeriesPaint (1, Color.ORANGE);
           renderer.setSeriesStroke (1, new BasicStroke (3.0f));
           renderer.setSeriesPaint (2, Color.GREEN);
           renderer.setSeriesStroke (2, new BasicStroke (3.0f));
           renderer.setSeriesPaint (3, Color.orange);
           renderer.setSeriesStroke (3, new BasicStroke (3.0f));
           renderer.setSeriesPaint (4, Color.RED);
           renderer.setSeriesStroke (4, new BasicStroke (3.0f));
           
           
           plot.setRenderer (renderer);
           
  response.setContentType ("image/JPG");
  OutputStream sa = response.getOutputStream ();
  ChartUtilities.writeChartAsJPEG (sa, graficapesonino, 500,500);
        %>
    </body>
</html>
    </body>
</html>
