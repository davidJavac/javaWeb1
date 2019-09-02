<%@ page contentType = "text/html" pageEncoding= "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import = "negocio.*, java.util.ArrayList"%>
	<%
		ArrayList<Productos> productos = (ArrayList<Productos>) request.getAttribute("productos");
		int cont = (Integer) request.getAttribute("cont");
	%>
	<h1>Los productos que estan registrados son:</h1>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<th>Clave</th>
			<th>Nombre</th>
			<th>Precio</th>
			<th>Cantidad</th>
		</tr>
		<%
			for(Productos prod : productos){

		%>
				<tr>
					<td><%= prod.getClave()%></td>
					<td><%= prod.getNombre()%></td>
					<td><%= prod.getPrecio()%></td>
					<td><%= prod.getCantidad()%></td>
				</tr>
		<%}%>
	</table>
	<p>Numero de registros <%= cont %></p>
	<form action="ingresoP4.jsp" method = "post">
		<input type="submit" name="regresar" value = "Regresar">
	</form>
</body>
</html>