<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" onClick="checkClick(event)">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximun-scale=1">

	<meta name="author" content="Lucking">
	<meta name="description" content="editar_perfil.html">
	<title>editar_perfil.html</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/comun_estilos.css">
	<link rel="stylesheet" href="css/editar_perfil_estilos.css">
	<script src="css/modernizr.custom.24970.js"></script>

	<script>
		function activar_navegacion() {
			document.getElementById("menu").style.visibility = "visible";
		}

		function desactivar_navegacion() {
			document.getElementById("menu").style.visibility = "hidden";
		}

		function checkClick(e) {
			var cursorX = e.pageX;
    		var cursorY = e.pageY;


    		var menu = document.getElementById('img_img_avatar');
			var menuRectangle = menu.getBoundingClientRect();

			if(cursorX >= menuRectangle.left && cursorX <= menuRectangle.right && cursorY >= menuRectangle.top && cursorY <= menuRectangle.bottom)
				activar_navegacion();
			else
				desactivar_navegacion();
		}
	</script>

</head>
<body>
	<header>
		<nav>
			<img src="imagenes/logo.png" />
			<ul>
				<li><a href="home.html">Home</a></li>
				<li><a href="crear_articulo.html">Post an Article</a></li>
				<li><a href="faq.html">FAQ</a></li>
				<li><a href="ingresar.html">Salir</a></li>
			</ul>
		</nav>
	</header>

	<section>
		<article id="top">
			<div id="img_avatar">
				<img id= "img_img_avatar" src="imagenes/default_avatar.png"/>

				<nav id="menu">
					<ul>
						<li><a href="editar_perfil.html">Perfil</a></li>
						<li><a href="ver_articulos.html">Adm. de ArtÃ­culos</a></li>
						<li><a href="crear_articulo.html">Crear ArtÃ­culo</a></li>
						<li><a href="faq.html">FAQ</a></li>
						<li><a href="ingresar.html">Salir</a></li>
					</ul>
				</nav>
			</div>

			<h1>Editar Perfil</h1>
		</article>
	</section>

	<section>
		<article id="editar_perfil">
			<form method="POST" action="ServletUser">
                            <input type="hidden" name="peticion" value="UPDATE" />
				<ul>
					<li>
						<label>Email:</label>
						<input name="mail" type="text" placeholder="Ingrese su nuevo email" />
					</li>
					<li>
						<label>Steam ID:</label>
						<input name="steamid" type="text" placeholder="STEAM ID" />
					</li>
                                        <li>
						<label>Facebook ID:</label>
						<input name="facebookid" type="text" placeholder="STEAM ID" />
					</li>
					<li>
						<label>Descripcion:</label>
						<input name="descripcion" type="text" placeholder="Ingresa su nueva descripcion" />
					</li>
					<li>
						<label>Password:</label>
						<input name="password" type="password" placeholder="Ingrese su nuevo Password" />
					</li>
					<li>
						<input type="submit" value="Guardar cambios" />
					</li>
				</ul>
			</form>
		</article>
	</section>
</body>
</html>