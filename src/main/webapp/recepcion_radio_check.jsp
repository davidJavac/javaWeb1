<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta http-equiv="Content-Type" content="text/html; charset= UTF-8">></meta>
</head>
<body>
	<h1>Esta es la pagina de inicio</h1>
	<h2>Aqui se piden los datos</h2>
	<p>Elige que trasporte quieres</p>
	<form action ="paginaDestino_radio_check.jsp">
		<input type="radio" name="transporte" value = "Automovil">Coche
		<input type="radio" name="transporte" value = "Avion" checked="">Avion
		<input type="radio" name="transporte" value = "Camion">Camion
		<p>Cuales son tus destino favoritos?</p>

		<input type="checkbox" name="ciudad" value="Ciudad">Ciudad<br>
		<input type="checkbox" name="bosque" value="Bosque" checked="">Bosque<br>
		<input type="checkbox" name="playa" value="Playa" checked="">Playa<br>
		<input type="submit" name="enviar" value ="Enviar">
	</form>

</body>
</html>