<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<h1>Proporciona tus datos</h1>
	<form action="paginaRegistro.jsp" method="post">
		<table cellspacing="3" cellpadding="3" border ="1">
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value="David"></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><input type="text" name="apellido" value="Abramovich"></td>
			</tr>
			<tr>
				<td>Promedio</td>
				<td><input type="text" name="promedio" value="10"></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value = "Borrar">
		<input type="submit" name="enviar" value = "Enviar">
	</form>
</body>
</html>