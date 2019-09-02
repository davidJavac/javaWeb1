<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String mail = request.getParameter("mail");
		String sexo = request.getParameter("sexo");
		String java = request.getParameter("java");
		String c = request.getParameter("c");
		String basic = request.getParameter("basic");
		String python = request.getParameter("python");
		String [] idiomas = request.getParameterValues("idiomas");
		String comentarios = request.getParameter("comentarios");

	%>
	<h1>Solicitud recibida</h1>
	<h2>Tus datos son:</h2>
	<table cellspacing="3" cellpadding="3" border="1">
		<tr>
			<td>Te llamas</td>
			<td><%= nombre%></td>
		</tr>
		<tr>
			<td>Apellido</td>
			<td><%= apellido%></td>
		</tr>
		<tr>
			<td>Tu correo es</td>
			<td><%= mail%></td>
		</tr>
		<tr>
			<td>Eres</td>
			<td><%= sexo%></td>
		</tr>
	</table>
	<p>Manejas los siguientes lenguajes de programacion</p>
	<% for(int i = 0; i < idiomas.length; i++){%>
		<%= idiomas[i]%>
	<%}%>
	<p>Los idiomas que comprendes son</p>
	<% if(java != null){%>
		java
	<%}%>
	<% if(c != null){%>
		c
	<%}%>
	<% if(basic != null){%>
		basic
	<%}%>
	<% if(python != null){%>
		python
	<%}%>

	<p>Comentarios adicionales</p>
	<textarea rows="4" cols="50"><%= comentarios %></textarea>
	<form action="recepcion_practica3.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>