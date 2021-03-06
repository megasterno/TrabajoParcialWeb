<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" onClick="checkClick(event)">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximun-scale=1">

	<meta name="author" content="Lucking">
	<meta name="description" content="articulo.html">
	<title>articulo.html</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/comun_estilos.css">
	<link rel="stylesheet" href="css/articulo_estilos.css">
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

			<h1>ArtÃ­culo #12364</h1>
		</article>
	</section>

	<section>
		<article id="articulo">
			<p><h2>Grandioso tÃ­tulo NÂº12364</h2></p>
			<p>
				<table>
					<tr>
						<td><div class="num_upvote">1000</div></td>
						<td rowspan="2"><div class="updown"><a href="#"><img src="imagenes/upvote.png" /></a><a href="#"><img src="imagenes/downvote.png" /></a></div></td>
					</tr>
					<tr>
						<td><div class="num_downvote">186</div></td>
					</tr>
				</table>
			</p>
			<p><a href="articulo.html">Retornar al articulo</a></p>
			<div id="creador">
<img src="imagenes/stats.gif" alt="estadisticas">
			<p>Creado por: Lucking</p>

					
			
			
				
				</div>
			<div id="tags"><p>Tags: Doto 2, Lol of Legends, Pay 2 Win, Gaben PLS</p></div>
		</article>
	</section>

	<div id="espaciado">
	</div>
</body>
</html>