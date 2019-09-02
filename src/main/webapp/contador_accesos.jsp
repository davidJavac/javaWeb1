<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import = "java.util.Date"%>
	<%! int cont = 0;%>
	<% cont++;%>

	<h1>En esta pagina se lleva la cuenta del numero de accesos</h1>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Fecha y hora</td>
			<td><%= new Date()%></td>
		</tr>
	</table>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Numero de accesos</td>
			<td><%= cont%></td>
		</tr>
	</table>
</body>
</html>