<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import="negocio.Calcula" %>
	<%
		//Extraccion de los parametros extraidos
		String nombre = request.getParameter("nombre");
		String tFinal = request.getParameter("mf");
		String tInicial = request.getParameter("mi");
		String dist = request.getParameter("distancia");
		Double vel, tiempo;
		Calcula calcula = new Calcula(tInicial, tFinal, dist);
		
		calcula.velocidad();
		vel = calcula.getVel();
		calcula.tiempoTotal();
		tiempo = calcula.getTiempo();
	%>
	<h2>Resultado</h2>
	<p>Hola <%= nombre%></p>
	<table cellpadding="3" cellspacing="3" border = "1">
		<tr>
			<td>Tu tiempo total fue</td>
			<td><%= tiempo%></td>
		</tr>
		<tr>
			<td>Y tu velocidad</td>
			<td><%= vel%></td>
		</tr>
	
	</table>
	<form action="calculos.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>