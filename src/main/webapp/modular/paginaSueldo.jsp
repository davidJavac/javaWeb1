<%@ page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="ContentType" content="charset = UTF-8">
</head>
<body>
	<%@ page import="negocio.*"%>
	<%
		String nombre = request.getParameter("nombre");
		String dias_t = request.getParameter("dias");
		String sueldo_d = request.getParameter("sueldo_d");

		Empleado empleado = new Empleado(nombre, Integer.parseInt(dias_t), Double.parseDouble(sueldo_d));
		CalculaSueldo calcS = new CalculaSueldo(empleado);
	%>	
	<h2>Resultado</h2>
	<p>Hola <%= nombre%></p>
	<table cellpadding="3" cellspacing="3" border="1">
		<tr>
			<td>Tu sueldo fue de</td>
			<td><%= calcS.getSueldo_calc()%></td>
		</tr>
	</table>
	<form action="calculoSueldo.jsp" method="post">
		<input type="submit" name="regresar" value = "Regresar">
	</form>
</body>
</html>