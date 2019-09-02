<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<h1>Esta es la pagina de inicio</h1>
	<h2>Aqui se piden los datos</h2>
	<h1>Area de texto</h1>
	
	<form action="destino_textarea.jsp" method="post">
		<p>Se pueden desplegar textos por default</p>
		<textarea name="default" rows="3" cols="50">
			Si la cantidad de palabras del texto excede el tamaño se genera scroll
		</textarea>
		<p>O se puede cargar un area vacia</p>
		<textarea name="vacia" rows="3" cols="50"></textarea>
		<input type="submit" name="enviar" value="Enviar">
	</form>
</body>
</html>