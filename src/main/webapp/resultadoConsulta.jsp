<%@page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="charset = UTF-8">
</head>
<body>
	<%@ page import = "negocio.*"%>
	<%
		Productos producto = (Productos) request.getAttribute("producto");
	%>
	<h1>Resultado de la consulta</h1>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Clave</td>
			<td><%= producto.getClave()%></td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><%= producto.getNombre()%></td>
		</tr>
		<tr>
			<td>Precio</td>
			<td><%= producto.getPrecio()%></td>
		</tr>
		<tr>
			<td>Cantidad</td>
			<td><%= producto.getCantidad()%></td>
		</tr>
	</table>
	<form action="ingresoP4.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>