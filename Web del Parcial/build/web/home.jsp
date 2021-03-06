<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es" onClick="checkClick(event)">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximun-scale=1">

	<meta name="author" content="Lucking">
	<meta name="description" content="home.html">
	<title>home.html</title>
	<link rel="stylesheet" href="css/normalize.css" media="screen">
	<link rel="stylesheet" href="css/comun_estilos.css">
	<link rel="stylesheet" href="css/home_estilos.css">
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
				<li><a href="home.jsp">Home</a></li>
				<li><a href="crear_articulo.jsp">Post an Article</a></li>
				<li><a href="faq.jsp">FAQ</a></li>
				<li><a href="ingresar.jsp">Salir</a></li>
			</ul>
		</nav>
	</header>
	
	<section>
		<article id="top">
			<div id="img_avatar">
				<img id= "img_img_avatar" src="imagenes/default_avatar.png"/>

				<nav id="menu">
					<ul>
						<li><a href="editar_perfil.jsp">Perfil</a></li>
						<li><a href="ver_articulos.jsp">Adm. de ArtÃ­culos</a></li>
						<li><a href="crear_articulo.jsp">Crear ArtÃ­culo</a></li>
						<li><a href="faq.jsp">FAQ</a></li>
						<li><a href="ingresar.jsp">Salir</a></li>
					</ul>
				</nav>
			</div>
			<div id="perfil">
				<h1>Home <c:out value="${usuario.name}" /></h1>
				<form method="POST" action="ServletArticle">
                                    <input type="hidden" name="peticion" value="GETAllBYTITLE" />
                                    <input name="busqueda" type="text" placeholder="Ingrese aquÃ­ el contenido a buscar ..." />
                                    <input type="submit" value="Buscar" />
				</form>
			</div>
		</article>

		<article id="aside1">
		</article>

		<article id="feed">
			<div class="noticia">
				<img src="imagenes/default_noticia.jpg" />
				<span>
					<h1>TÃ­tulo 1</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
					<p>
						<center><a href="articulo.jsp" />">Ver mÃ¡s ...</a></center>
					</p>
				</span>
			</div>
			<div class="noticia">
				<img src="imagenes/default_noticia.jpg" />
				<span>
					<h1>TÃ­tulo 2</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
					<p>
						<center><a href="articulo.jsp">Ver mÃ¡s ...</a></center>
					</p>
				</span>
			</div>
			<div class="noticia">
				<img src="imagenes/default_noticia.jpg" />
				<span>
					<h1>TÃ­tulo 3</h1>
					<p>
						Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
						tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
						quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
						consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
						cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
						proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
					</p>
					<p>
						<center><a href="articulo.jsp">Ver mÃ¡s ...</a></center>
					</p>
				</span>
			</div>

		</article>

		<article id="aside2">
			<div id="aside2_titulo">
				<h1>Hot Topics</h1>
			</div>
		</article>
	</section>

</body>
</html>