<%@ page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import= "controlador.*"%>
	<h1>Hola! Proporciona tus datos</h1>
	<form action="RecibeDatos" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value = "David" required/></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><input type="text" name="apellido" value = "Abramovich" required/></td>
			</tr>
			<tr>
				<td>Promedio</td>
				<td><input type="text" name="promedio" value = "10" required/></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value="Borrar">
		<input type="submit" name="enviar" value="Enviar">
	</form>
	<form action = "MuestraRegistro" method = "post">
		<input type="submit" name="ver_alumnos" value="Ver alumnos">	
	</form>
</body>
</html>