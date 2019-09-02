<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%
		String nombre = request.getParameter("nombre");
		String color = request.getParameter("color");
		String mail = request.getParameter("mail");
	%>
	<h1>Esta es la pagina destino</h1>
	<h2>Aqui se despliegan los datos que se recibieron</h2>
	<p>Tus datos son los siguientes</p>
	<table cellspacing="3" cellpadding="3" border="1">
		<tr>
			<td align="center">Te llamas</td>
			<td><%=nombre%></td>
		</tr>
		<tr>
			<td align="center">Tu color favorito es</td>
			<td><%=color%></td>
		</tr>
		<tr>
			<td align="center">Tu correo es</td>
			<td><%=mail%></td>
		</tr>
	</table>	
	<form action="index_post.jsp" method="post">
		<input type="submit" value="Regresar">
	</form>
</body>
</html>