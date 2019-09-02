<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%
		String texto = request.getParameter("vacia");
	%>
	<h1>Esta es la pagina destino</h1>
	<h2>Aqui se despliegan los datos que se recibieros</h2>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td align="center">El usuario escribio:</td>
			<td><%= texto %></td>
		</tr>
	</table>
	<form action = "recepcion_textarea.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">	
	</form>
	
</body>
</html>