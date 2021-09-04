<%-- 
    Document   : resultado
    Created on : 30/11/2018, 04:51:47 PM
    Author     : Brandon
--%>

<%@page import="modelo.Email"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Comentario</title>
    </head>
    <body>
          <%
            
            Email email = new Email();
            
            String de = request.getParameter("de");
//            String clave = request.getParameter("clave");
 //           String para = request.getParameter("para");
            String mensaje = request.getParameter("mensaje");
            String asunto = request.getParameter("asunto");
            
          
            
            boolean resultado = email.enviarCorreo( mensaje, asunto);
            
           if(resultado){  %>
                <script>
            alert('¡ENVIADO CORRECTAMENTE!');
            location.href ="reporte.jsp";
                </script>
                
          <%  }else{%>
                   <script>
            alert('¡FALLO EL ENVIO !');
            location.href ="reporte.jsp";
                </script>
           <% }%>
            
        %>
    </body>
</html>

