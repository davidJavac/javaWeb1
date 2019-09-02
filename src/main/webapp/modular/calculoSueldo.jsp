<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="text/html; charset= UTF-8">
</head>
<body>
	<h1>Pagina de inicio</h1>
	<h2>Introduce la informacion</h2>
	<form action="paginaSueldo.jsp" method="post">
		<table cellspacing="3" cellpadding="3" border="1"> 
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre"></td>
			</tr>
			<tr>
				<td>Sueldo diario</td>
				<td><input type="text" name="sueldo_d"></td>
			</tr>
			<tr>
				<td>Dias trabajados</td>
				<td><input type="text" name="dias"></td>
			</tr>
		</table>
		<input type="submit" name="calcular" value="Calcular">
	</form>
</body>
</html>