<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content = "text/html; charset= UTF-8" >
	<title></title>
</head>
<body>
	<h1>Esta es la pagina de inicio</h1>
	<h2>Aqui se piden los datos</h2>
	<p>Hola por favor introduce la informacion</p>
	<form action = "paginaDestino.jsp" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td align="center">Nombre</td>
				<td><input type="text" name="nombre" value = "Francisco"></td>
			</tr>
			<tr>
				<td align="center">Color favorito</td>
				<td><input type="text" name="color" value = "verde"></td>
			</tr>
			<tr>
				<td align="center">Correo</td>
				<td><input type="text" name="mail" value = "fran.a@gmail.com"></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value = "Borrar">
		<input type="submit" name="enviar" value = "Enviar">
	</form>
</body>
</html>