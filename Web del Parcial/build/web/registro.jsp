<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximun-scale=1">

	<meta name="author" content="Lucking">
	<meta name="description" content="ingresar.html">
	<title>ingresar.html</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/ingresar_estilos.css">
	<script src="css/modernizr.custom.24970.js"></script>
</head>
<body>
	<section>
		<h1>Registro de nueva cuenta</h1>
		<article>
			<form method="POST" action="ServletUser">
                            <input type="hidden" name="peticion" value="CREATE" />
                            <label>Email:</label>
                            <input name="email" placeholder="ejemplo@dot.com"type="text" />
                            <label>Nombre:</label>
                            <input name="nombre" placeholder="Erik"type="text" />
                            <label>Apellido:</label>
                            <input name="apellido" placeholder="Medina mas na"type="text" />
                            <label>Usuario:</label>
                            <input name="usuario" placeholder="por ejemplo: Lucking eltragasable"type="text" />
                            <label>Password:</label>
                            <input name="contrasena" placeholder="**********" type="password" />
                            <label>Repita Password:</label>
                            <input name="contrasena2" placeholder="**********" type="password" />
                            <div name="div_errores">
                            </div>
                            <label>Descifre el captcha:<br>1+1:</label>
                            <input name="captcha" placeholder="resuelva la operacion"type="text" />
                            <input name="Registrar" type="submit" value="Registrar" />
			</form>
		</article>
	</section>
</body>
</html>