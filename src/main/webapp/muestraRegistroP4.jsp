<%@ page contentType = "text/html" pageEncoding= "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import = "negocio.*"%>
	<%
		Productos productos = (Productos) request.getAttribute("producto");
	%>
	<h1>MuestraRegistro.jsp</h1>
	<p>se guardaron los siguientes datos</p>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Clave</td>
			<td><%= productos.getClave()%></td>
		</tr>
		<tr>
			<td>Nombre</td>
			<td><%= productos.getNombre()%></td>
		</tr>
		<tr>
			<td>Precio</td>
			<td><%= productos.getPrecio()%></td>
		</tr>
		<tr>
			<td>Cantidad</td>
			<td><%= productos.getCantidad()%></td>
		</tr>
	</table>
	<form action="ingresoP4.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>