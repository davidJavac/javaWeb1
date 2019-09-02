<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%
		String idioma = request.getParameter("idioma");
		String [] tecnologia = request.getParameterValues("tecnologia");
	%>
	<h1>Esta es la pagina destino</h1>
	<h2>Aqui se despliegan los datos que se recibieron</h2>
	
	<table cellspacing="4" cellpadding="3" border="1">
		<tr>
			<td>Tu idioma natal es:</td>
			<td><%= idioma %></td>
		</tr>
	</table>
	<p>Manejas los siguientes lenguajes de programacion
		<%for(int i = 0; i < tecnologia.length; i++){%>
		<%= tecnologia[i]%>
		<%}%>
	</p>
	<form action="recepcion_listaopciones.jsp" method="post">
		<input type="submit" name="enviar" value="Enviar">
	</form>
</body>
</html>