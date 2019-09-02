<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">
</head>
<body>
	<h1>Esta es la pagina de inicio</h1>
	<h2>Aqui se piden los datos</h2>
	<p>Idioma natal</p>
	<form action = "destino_listaopciones.jsp">
		<select name = "idioma">
			<option selected="">Español</option>
			<option>Frances</option>
			<option>Ingles</option>
		</select>
		<p>Selecciona tu lenguaje de programacion</p>
		<p>(Ctrl-click para elegir varias opciones)</p>
		<select name = "tecnologia" multiple="">
			<option selected="">Java</option>
			<option selected="">C</option>
			<option selected="">Python</option>
			<option>Basic</option>
		</select>
		<input type="submit" name="enviar" value="Enviar">
	</form>
</body>
</html>