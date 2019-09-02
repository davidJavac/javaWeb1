<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset = UTF-8">
</head>
<body>
	<h1>Solicitud</h1>
	<p>Despues de introducir tus datos oprime el boton "enviar"</p>
	<form action="destino_practica3.jsp" method="post">
		<table cellpadding="3" cellspacing="3" border = "1">
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value = "Francisco"></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><input type="text" name="apellido" value = "Fernandez"></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><input type="text" name="mail" value = "fran.a@gmail.com"></td>
			</tr>
		</table>
		Eres<input type="radio" name="sexo" value = "hombre" checked="">Hombre
			<input type="radio" name="sexo" value = "mujer">Mujer
		<p>Selecciona lo que sabes</p>
		<input type="checkbox" name="java" value = "java" checked="">Java
		<input type="checkbox" name="c" value = "c" checked="">C
		<input type="checkbox" name="basic" value = "basic">Basic
		<input type="checkbox" name="python" value = "python" checked="">Python
		
		<table>
			<tr>
				<td align="center">Selecciona los idiomas que comprendes</td>
				<td align="center">Comentarios adicionales</td>
			</tr>
			<tr>
				<td>
					<select name = "idiomas" multiple>
						<option selected="">Español</option>
						<option selected="">Ingles</option>
						<option>Frances</option>
						<option selected="">Aleman</option>
					</select>
				</td>
				<td>
					<textarea name="comentarios" rows="4" cols = "50"></textarea>
				</td>
			</tr>
		</table>
		<input type="reset" name="borrar" value="Borrar">
		<input type="submit" name="enviar" value="Enviar">
	</form>
</body>
</html>