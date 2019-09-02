<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<h1>Solucion ecuacion 2 grado</h1>
	<table cellspacing="3" cellpadding="3" border="1">
		<tr>
			<td>Proporcionar los coeficientes de la ecuacion</td>
		</tr>
		<tr>
			<td><img src="imagenes/coffee_cup.jpg" height="50" alt="no se encontro la imagen"></td>
		</tr>
		<tr>
			<td>La solucion se obtiene con la formula:</td>
		</tr>
		<tr>
			<td><img src="imagenes/coffee_cup.jpg" height="50" alt="no se encontro la imagen"></td>
		</tr>
	</table>
	<form action="ecuacionDestino.jsp" method="post">
		<table cellpadding="3" cellspacing="3" border="1">
			<tr>
				<td align="center">a</td>
				<td><input type="text" name="coeficiente_a" value = "1" required/></td>
			</tr>
			<tr>
				<td align="center">b</td>
				<td><input type="text" name="coeficiente_b" value = "1" required/></td>
			</tr>
			<tr>
				<td align="center">c</td>
				<td><input type="text" name="coeficiente_c" value = "-12" required/></td>
			</tr>
			<tr>
				<td><input type="reset" name="borrar" value = "Borrar"></td>
				<td><input type="submit" name="resolver" value = "Resolver"></td>
			</tr>
		</table>
	</form>
</body>
</html>