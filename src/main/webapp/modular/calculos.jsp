<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<h1>Esta es la pagina de inicio</h1>
	<h2>Aqui se piden los datos</h2>
	<p>Introduce la informacion</p>
	<form action="calculoDestino.jsp" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td align="center">Nombre</td>
				<td><input type="text" name="nombre" value="David"></td>
			</tr>
			<tr>
				<td align="center">Minuto inicial</td>
				<td><input type="text" name="mi" value="8"></td>
			</tr>
			<tr>
				<td align="center">Minuto final</td>
				<td><input type="text" name="mf" value="16"></td>
			</tr>
			<tr>
				<td align="center">Distancia recorrida(en mts)</td>
				<td><input type="text" name="distancia" value="200"></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value="Borrar">
		<input type="submit" name="enviar" value="Enviar">
	</form>
</body>
</html>