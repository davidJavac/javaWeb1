<%@ page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@page import = "negocio.*, java.util.ArrayList"%>
	<h2>Los alumnos que estan registrados son :</h2>
	<%
		ArrayList<Alumno> alumnos = null;
		alumnos = (ArrayList<Alumno>) request.getAttribute("Alumnos");
		String numReg = (String) request.getAttribute("contador");
		int numRegistros = Integer.parseInt(numReg);
	%>
	<table border="1">
		<tr>
			<th>Nombre</th>
			<th>Apellido</th>
			<th>Promedio</th>
		</tr>
		<%
			for(Alumno alumno : alumnos){

		%>
		<tr valign="top">
			<td><%= alumno.getNombre()%></td>
			<td><%= alumno.getApellido()%></td>
			<td><%= alumno.getPromedio()%></td>
		</tr>	
		<% } %>
		<% alumnos.clear();%>
	</table>
	<p>Numero de registros: <%= numRegistros%></p>
	<br>
	<form action="envioServlet2.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>