<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" onClick="checkClick(event)">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximun-scale=1">

	<meta name="author" content="Lucking">
	<meta name="description" content="faq.html">
	<title>faq.html</title>
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/comun_estilos.css">
	<link rel="stylesheet" href="css/faq_estilos.css">
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

			<h1>FAQ</h1>
		</article>
	</section>

	<section>
		<article class="faq">
			<h3>
				Â¿Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua?
			</h3>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>
		</article>
		<article class="faq">
			<h3>
				Â¿Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur?
			</h3>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>
		</article>
		<article class="faq">
			<h3>
				Â¿Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum?
			</h3>
			<p>
				Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
				tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
				quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
				consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
				cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
				proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
			</p>
		</article>
		<article class="faq">
			<h3>
				Â¿FAQ?
			</h3>
			<p>
				Faq faq faq faqfaq faqfaqfaq faq faq faq faqfaqfaqfaq faq faq. FAQ faq faq faq faqfaqfaqfaqfaq faqfaq
				faqfaq faqfaqfaqfaqv faqfaq faq. Faqfaq. Faqfaqfaqfaqfaq Faqfaq faqfaq.
			</p>
		</article>
	</section>

</body>
</html>