<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>
	<h1>Solicitud</h1>
	<p>Despues de introducir tus datos oprime el boton enviar</p>

	<form action="solicitud.jsp">
		<table cellpadding="2" cellspacing="2" border="1">
			<tr>
				<td>Nombre</td>
				<td><input type="text" name="nombre" value = "David"></td>
			</tr>
			<tr>
				<td>Apellido</td>
				<td><input type="text" name="apellido" value = "Abramovich"></td>
			</tr>
			<tr>
				<td>Correo</td>
				<td><input type="text" name="correo" value = "Correo"></td>
			</tr>
		</table> <br>
		Eres<input type="radio" name="sexo" value = "Hombre" checked="">Hombre
			<input type="radio" name="sexo" value = "Mujer">Mujer
			<p>Selecciona lo que sabes</p>
			<input type="checkbox" name="tecnologias" value = "Java" checked="">Java
			<input type="checkbox" name="tecnologias" value = "C"checked="">C/C++
			<input type="checkbox" name="tecnologias" value = "Basic">Basic
			<input type="checkbox" name="tecnologias" value = "Html">Html
		<table>
			<tr>
				<td align="center">Selecciona los idiomas que comprendes</td>
				<td align="center">Comentarios adicionales</td>
			</tr>
			<tr>
				<td>
					<select name="idiomas" multiple="">
						<option selected="">Español</option>
						<option selected="">Ingles</option>
						<option>Frances</option>
						<option>Aleman</option>
					</select>
				</td>
				<td>
					<textarea name="comentarios" rows="10" cols="50">Comentarios, si son demasiados se despliega
					el scroll</textarea>			
				</td>
			</tr>

		</table>
		
		<br>
		<input type="submit" name="enviar" value="Enviar">
		<input type="reset" name="borrar" value="Borrar">
	</form>
</body>
</html>