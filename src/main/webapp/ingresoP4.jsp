<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="charset = UTF-8">
</head>
<body>
	<%@ page import = "controlador.*"%>
	<h1>Proporciona los datos del producto</h1>
	<form action = "RegistroBD" method="post">
		<table cellspacing="3" cellpadding="3" border="1">
			<tr>
				<td>Clave</td>
				<td><input type="text" name="clave" value="23456"></td>
			</tr>
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value="Pan"></td>
			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="text" name="precio" value="17.5"></td>
			</tr>
			<tr>
				<td>Cantidad</td>
				<td><input type="text" name="cantidad" value="18"></td>
			</tr>
		</table>
		<input type="reset" name="borrar" value="Borrar">
		<input type="submit" name="registrar" value="Registrar">

	</form>
	<form action="consultaProd.jsp" method="post">
		<input type="submit" name="consultar" value="Consultar">
	</form>
	<form action="MuestraProductosBD" method="post">
		<input type="submit" name="ver_productos" value="Ver productos">
	</form>
</body>
</html>