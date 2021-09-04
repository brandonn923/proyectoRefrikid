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
        <title>JSP Page</title>
    </head>
    <body>
          <%
            
            Email email = new Email();
            
            String de = request.getParameter("de");
//          String clave = request.getParameter("clave");
//          String para = request.getParameter("para");
            String mensaje = request.getParameter("mensaje");
            String asunto = request.getParameter("asunto");
            
            /* 
            String[] direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo ..."}
            boolean resultado = email.enviarCorreo(de, clave, direcciones, mensaje, asunto);
            
            */
            
            boolean resultado = email.enviarCorreo( mensaje, asunto);
            
            if(resultado){  %>
                <script>
            alert('¡ENVIADO CORRECTAMENTE!');
            location.href ="index.jsp";
                </script>
                
          <%  }else{%>
                   <script>
            alert('¡FALLO EL ENVIO !');
            location.href ="index.jsp";
                </script>
           <% }%>

            
      
    </body>
</html>
