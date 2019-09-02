<%@page contentType="text/html" pageEncoding = "UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="contentType" content="text/html; charset = UTF-8">
</head>
<body>
	<%@ page import="datos.*, negocio.*"%>
	<%
		//obtencion de parametros de la peticion
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String promedio = request.getParameter("promedio");
		Alumno alumno = new Alumno(nombre, apellido, Double.parseDouble(promedio));
		ServletContext sc = this.getServletContext();
		String path = sc.getRealPath("/WEB-INF/Promedios.txt");
		path = path.replace("\\", "/");
		//guardar en archivo
		EscribeArchivo ea = new EscribeArchivo(alumno, path);
		ea.add();
	%>
	<h2>El registro fue exitoso</h2>
	<form action="registro.jsp" method="post">
		<input type="submit" name="regresar" value = "Nuevo registro">
	</form>
</body>
</html>