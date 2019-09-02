<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%
		String transp = request.getParameter("transporte");
		String ciudad = request.getParameter("ciudad");
		String bosque = request.getParameter("bosque");
		String playa = request.getParameter("playa");
	%>
	<h1>Esta es la pagina destino</h1>
	<h2>Aqui se despliegan los datos que se recibieron</h2>
	<table cellpadding="3" cellspacing="3" border = "1">
		<tr>
			<td align="center">Tu trasporte preferido es el:</td>
			<td align="center"><%= transp %></td>
		</tr>
	</table>
	<p>Elegiste los siguientes destinos</p>
	<% if (ciudad != null){%>
		ciudad,
	<%}%>
	<% if (bosque != null){%>
		bosque,
	<%}%>
	<% if (playa != null){%>
		playa
	<%}%>
	<form action = "recepcion_radio_check.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>	
</html>