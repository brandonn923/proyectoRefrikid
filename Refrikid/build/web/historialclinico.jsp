<%-- 
    Document   : historialclinico.jsp
    Created on : 14/11/2018, 07:39:13 AM
    Author     : a
--%>

<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="VO.UsuarioVO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        	<div>
		<br><br>
			<h2 class="col-md-offset-4">Historial Clínico</h2>
		<div class="col-md-9 col-md-offset-1">
      
			<form method="POST" action="Historial">	
				<br><br>
                              
					<label>Primer Nombre</label> 
                                        <input type="text" name="Primernombre"  >
					<label>Segundo Nombre</label> 
						<input type="text" name="Segundonombre">
				<br><br>
					<label>Primer Apellido</label> 
						<input type="text" name="Primerapellido">
					<label>Segundo Apellido</label>	
						<input type="text" name="Segundoapellido">
				<br><br>
					<label>Numero de Documento</label> 
						<input type="text" name="NDocumento">
					<label>Tipo de Documento</label>
						<input type="text" name="tipodocumento">
				<br><br>
					<label> Fecha Actual</label> 
                                        <input type="date" name="fechadenacimiento" >
					<label>Genero</label>
							<input type="text" name="fechadenacimiento">
    			<br><br>
					<label>Peso</label> 
							<input type="text" name="Peso">
					<label>Estatura</label>
						<input type="text" name="talla">
					<label>RH</label>
						<input type="text" name="RH">
				<br><br> 
				<br><br>
                                <input type="hidden" name="opcion" value="1">
                                <button>Guardar</button>		
			
			</form>
                    
                     <% if(request.getAttribute("error")!=null){%>
        ${error}
        <%}else {%>
        ${exito}
        <%}%>
		</div>
	</div>
        
        
        
    </body>
</html>
