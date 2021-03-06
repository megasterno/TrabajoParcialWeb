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
			<p><a href="articulo_stats.html">(Ver estadisticas del articulo)</a></p>
			<div id="creador"><p>Creado por: Lucking</p></div>
			<img src="imagenes/default_noticia.jpg" />
			<p>
				Lorem ipsum dolor sit amet, copiosae appetere adipisci pro an, alii rationibus ut duo. Cu mucius facilis disputationi vis, pri tale molestiae mnesarchum ne. Ei posse nostrud habemus per, enim senserit suscipiantur eos no. Eu delectus dissentiunt vix. Et vix numquam postulant, ad nec oportere explicari. Quo ei impetus expetenda elaboraret. Eum at iisque convenire, ius omnium quaeque necessitatibus ad, has at vide inani recteque. Integre maiorum et eam, quaeque accusata atomorum duo te. Offendit appetere sea et. Dicam eripuit pro ex. Magna posse nusquam mei ad, sed platonem delicatissimi no. Dicta repudiare scripserit qui te, malis congue aliquid eos ex. Case verterem no usu, ea integre nominati efficiendi cum, mea et detraxit quaerendum. His saperet deleniti torquatos cu, pri vide dicit feugiat ad, ad sea erant putant civibus. Suas vituperata eos ei, pertinacia efficiantur eum in, vix prompta scripserit ea. Quaeque signiferumque qui ex, viderer pertinacia sit no. Et qui oratio postea maluisset, sumo autem ignota mei no. Atqui consul similique cum at, mea eu ludus postea, ea tantas appareat conceptam pri. Vide semper eu nam. Mei dico nostro et, vix ne oportere reformidans, quidam referrentur cum et. Offendit legendos no his. Pri in postea iuvaret sapientem, at usu soleat utroque eloquentiam, prima constituam et vis. Duo albucius ponderum senserit ei, ea brute solet denique qui, an euripidis consequat ius. Eam at impedit graecis.
			</p>
			<p>
				Lorem ipsum dolor sit amet, copiosae appetere adipisci pro an, alii rationibus ut duo. Cu mucius facilis disputationi vis, pri tale molestiae mnesarchum ne. Ei posse nostrud habemus per, enim senserit suscipiantur eos no. Eu delectus dissentiunt vix. Et vix numquam postulant, ad nec oportere explicari. Quo ei impetus expetenda elaboraret. Eum at iisque convenire, ius omnium quaeque necessitatibus ad, has at vide inani recteque. Integre maiorum et eam, quaeque accusata atomorum duo te. Offendit appetere sea et. Dicam eripuit pro ex. Magna posse nusquam mei ad, sed platonem delicatissimi no. Dicta repudiare scripserit qui te, malis congue aliquid eos ex. Case verterem no usu, ea integre nominati efficiendi cum, mea et detraxit quaerendum. His saperet deleniti torquatos cu, pri vide dicit feugiat ad, ad sea erant putant civibus. Suas vituperata eos ei, pertinacia efficiantur eum in, vix prompta scripserit ea. Quaeque signiferumque qui ex, viderer pertinacia sit no. Et qui oratio postea maluisset, sumo autem ignota mei no. Atqui consul similique cum at, mea eu ludus postea, ea tantas appareat conceptam pri. Vide semper eu nam. Mei dico nostro et, vix ne oportere reformidans, quidam referrentur cum et. Offendit legendos no his. Pri in postea iuvaret sapientem, at usu soleat utroque eloquentiam, prima constituam et vis. Duo albucius ponderum senserit ei, ea brute solet denique qui, an euripidis consequat ius. Eam at impedit graecis.
			</p>
			<p>
				Lorem ipsum dolor sit amet, copiosae appetere adipisci pro an, alii rationibus ut duo. Cu mucius facilis disputationi vis, pri tale molestiae mnesarchum ne. Ei posse nostrud habemus per, enim senserit suscipiantur eos no. Eu delectus dissentiunt vix. Et vix numquam postulant, ad nec oportere explicari. Quo ei impetus expetenda elaboraret. Eum at iisque convenire, ius omnium quaeque necessitatibus ad, has at vide inani recteque. Integre maiorum et eam, quaeque accusata atomorum duo te. Offendit appetere sea et. Dicam eripuit pro ex. Magna posse nusquam mei ad, sed platonem delicatissimi no. Dicta repudiare scripserit qui te, malis congue aliquid eos ex. Case verterem no usu, ea integre nominati efficiendi cum, mea et detraxit quaerendum. His saperet deleniti torquatos cu, pri vide dicit feugiat ad, ad sea erant putant civibus. Suas vituperata eos ei, pertinacia efficiantur eum in, vix prompta scripserit ea. Quaeque signiferumque qui ex, viderer pertinacia sit no. Et qui oratio postea maluisset, sumo autem ignota mei no. Atqui consul similique cum at, mea eu ludus postea, ea tantas appareat conceptam pri. Vide semper eu nam. Mei dico nostro et, vix ne oportere reformidans, quidam referrentur cum et. Offendit legendos no his. Pri in postea iuvaret sapientem, at usu soleat utroque eloquentiam, prima constituam et vis. Duo albucius ponderum senserit ei, ea brute solet denique qui, an euripidis consequat ius. Eam at impedit graecis.
			</p>
			<p>
				Lorem ipsum dolor sit amet, copiosae appetere adipisci pro an, alii rationibus ut duo. Cu mucius facilis disputationi vis, pri tale molestiae mnesarchum ne. Ei posse nostrud habemus per, enim senserit suscipiantur eos no. Eu delectus dissentiunt vix. Et vix numquam postulant, ad nec oportere explicari. Quo ei impetus expetenda elaboraret. Eum at iisque convenire, ius omnium quaeque necessitatibus ad, has at vide inani recteque. Integre maiorum et eam, quaeque accusata atomorum duo te. Offendit appetere sea et. Dicam eripuit pro ex. Magna posse nusquam mei ad, sed platonem delicatissimi no. Dicta repudiare scripserit qui te, malis congue aliquid eos ex. Case verterem no usu, ea integre nominati efficiendi cum, mea et detraxit quaerendum. His saperet deleniti torquatos cu, pri vide dicit feugiat ad, ad sea erant putant civibus. Suas vituperata eos ei, pertinacia efficiantur eum in, vix prompta scripserit ea. Quaeque signiferumque qui ex, viderer pertinacia sit no. Et qui oratio postea maluisset, sumo autem ignota mei no. Atqui consul similique cum at, mea eu ludus postea, ea tantas appareat conceptam pri. Vide semper eu nam. Mei dico nostro et, vix ne oportere reformidans, quidam referrentur cum et. Offendit legendos no his. Pri in postea iuvaret sapientem, at usu soleat utroque eloquentiam, prima constituam et vis. Duo albucius ponderum senserit ei, ea brute solet denique qui, an euripidis consequat ius. Eam at impedit graecis.
			</p>
			<p>
				Lorem ipsum dolor sit amet, copiosae appetere adipisci pro an, alii rationibus ut duo. Cu mucius facilis disputationi vis, pri tale molestiae mnesarchum ne. Ei posse nostrud habemus per, enim senserit suscipiantur eos no. Eu delectus dissentiunt vix. Et vix numquam postulant, ad nec oportere explicari. Quo ei impetus expetenda elaboraret. Eum at iisque convenire, ius omnium quaeque necessitatibus ad, has at vide inani recteque. Integre maiorum et eam, quaeque accusata atomorum duo te. Offendit appetere sea et. Dicam eripuit pro ex. Magna posse nusquam mei ad, sed platonem delicatissimi no. Dicta repudiare scripserit qui te, malis congue aliquid eos ex. Case verterem no usu, ea integre nominati efficiendi cum, mea et detraxit quaerendum. His saperet deleniti torquatos cu, pri vide dicit feugiat ad, ad sea erant putant civibus. Suas vituperata eos ei, pertinacia efficiantur eum in, vix prompta scripserit ea. Quaeque signiferumque qui ex, viderer pertinacia sit no. Et qui oratio postea maluisset, sumo autem ignota mei no. Atqui consul similique cum at, mea eu ludus postea, ea tantas appareat conceptam pri. Vide semper eu nam. Mei dico nostro et, vix ne oportere reformidans, quidam referrentur cum et. Offendit legendos no his. Pri in postea iuvaret sapientem, at usu soleat utroque eloquentiam, prima constituam et vis. Duo albucius ponderum senserit ei, ea brute solet denique qui, an euripidis consequat ius. Eam at impedit graecis.
			</p>
			<div id="tags"><p>Tags: Doto 2, Lol of Legends, Pay 2 Win, Gaben PLS</p></div>
		</article>
	</section>

	<section>
		<article id="publicar_comentario">
			<h2>Publicar nuevo comentario</h2>
			<form method="POST" action="ServletComment">
                            <input type="hidden" name="peticion" value="CREATE" />
                            <input type="hidden" name="idarticulo" value="idarticulo">
                            <textarea name="comentario">
                            </textarea>
                            <p>
                            	<input type="submit" value="Publicar" />
                            </p>
			</form>
		</article>

		<article id="comentarios">
			<div class="comentario">
				<label>Edward:</label>
					<table>
						<tr>
							<td><div class="num_upvote">1</div></td>
							<td rowspan="2"><div class="updown"><a href="#"><img src="imagenes/upvote.png" /></a><a href="#"><img src="imagenes/downvote.png" /></a></div></td>
						</tr>
						<tr>
							<td><div class="num_downvote">186</div></td>
						</tr>
					</table>
				<p>
					<div class="comentario_box">
						THIS SUCKS M8 0/INFINITY
					</div>
					<input type="button" name="moderar" value="Moderar" onclick="hacerAlgo();">
				</p>
			</div>
			<div class="comentario">
				<label>Alphonse:</label>
					<table>
						<tr>
							<td><div class="num_upvote">1000</div></td>
							<td rowspan="2"><div class="updown"><a href="#"><img src="imagenes/upvote.png" /></a><a href="#"><img src="imagenes/downvote.png" /></a></div></td>
						</tr>
						<tr>
							<td><div class="num_downvote">80</div></td>
						</tr>
					</table>
				<p>
					<div class="comentario_box">
						U W8 M8?!
					</div>
					<input type="button" name="moderar" value="Moderar" onclick="hacerAlgo();">
				</p>
		</article>
	</section>
	<div id="espaciado">
	</div>
</body>
</html>