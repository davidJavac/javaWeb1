<%@ page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@page import="negocio.*"%>
	<%
		Alumno alumno = (Alumno) request.getAttribute("atribAlumno");
	%>
	<h1>muestraDatos.jsp</h1>
	<h2>Aqui se despliegan los datos que envio el servlet</h2>
	<p>Tus datos son los siguientes</p>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Te llamas</td>
			<td><%= alumno.getNombre()%></td>
		</tr>
		<tr>
			<td>Tu apellido es</td>
			<td><%= alumno.getApellido()%></td>
		</tr>
		<tr>
			<td>Tu promedio es</td>
			<td><%= alumno.getPromedio()%></td>
		</tr>
	</table>
	<form action="envioServlet2.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>