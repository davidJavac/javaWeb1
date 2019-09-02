<%@ page contentType = "text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import="datos.*, negocio.*"%>
	<%
		String co_a = request.getParameter("coeficiente_a");
		String co_b = request.getParameter("coeficiente_b");
		String co_c = request.getParameter("coeficiente_c");

		Ecuacion ecuacion = new Ecuacion(Double.parseDouble(co_a),Double.parseDouble(co_b),
			Double.parseDouble(co_c) );

		ServletContext sc = this.getServletContext();
		String path = sc.getRealPath("/WEB-INF/Resultados.txt");
		path = path.replace("\\", "/");

		ecuacion.calc_primera_raiz();
		ecuacion.calc_segunda_raiz();

		EscribeArchivo ea = new EscribeArchivo(ecuacion, path);
		ea.add();
	%>
	<table cellspacing="3" cellspacing="3" border="1">
		<tr>
			<th colspan="2">Resultados</th>
		</tr>
		<tr>
			<td>Primera raiz</td>
			<td><%= ecuacion.getPrimera_raiz_r()%></td>
		</tr>
		<tr>
			<td>Segunda raiz</td>
			<td><%= ecuacion.getSegunda_raiz_r()%></td>
		</tr>
	</table>
	<p>Los resultados se guardaran en el archivo: </p>
	<p><%= ea.getPath()%></p>
	<form action="ecuacionIngreso.jsp" method="post">
		<input type="submit" name="regresar" value="Regresar">
	</form>
</body>
</html>