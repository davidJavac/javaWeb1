<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="charset = UTF-8">
</head>
<body>
	<%@ page import = "controlador.*" %>
	<h1>Consultar un producto por ID</h1>
	<form action="ConsultaBD" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td>Clave</td>
				<td><input type="text" name="clave" value="1111"></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value="Borrar">
		<input type="submit" name="consultar" value="Consultar">
	</form>
	<form action="ingresoP4.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>