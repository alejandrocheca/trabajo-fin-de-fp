<!-- http://localhost/trabajo_fin_de_fp/index.php -->
<!-- cochecomponentes.es -->

  
<?php
session_start();

?>

<!DOCTYPE html>
	<html lang="es">
		<head>
			<meta charset="utf-8">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<link rel="stylesheet" href="style.css" type="text/css">
			<script type="text/javascript" src="javascript.js"></script>
             <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

		 </head>
		<body>
				<div class="menubar">
				<img id="logo" src="imagenes/logo%20coche.png">
				<ul>
					<li class="home">
						<a href="index.php">Inicio</a>
					</li><li class="registred">
						<a href="index.php?opcion=registrarse">Registrarse/Iniciar sesión</a>
					</li><li class="tipocoches">
						<a href="#">Tipos de componentes</a>
						<ul class="submenu1">
							<li><a href="index.php?opcion=motores">Motores</a></li>
							<li><a href="index.php?opcion=aceite">Aceite</a></li>
							<li><a href="index.php?opcion=carroceria">Carrocería</a></li>
							<li><a href="index.php?opcion=liquidos">Líquidos</a></li>
							<li><a href="index.php?opcion=ruedas">Ruedas</a></li>
						</ul>
					</li>
					<li class="contacts"><a href="#">Contactenos</a>
					</li><li>
						<div id="buscador">
						<input type="text" id="texto-busqueda" name="texto-busqueda" onkeydown="comprobarTecla(event)" placeholder="Buscar producto" title="Buscar producto">
					</div></li>
					</ul>
              
                </div>
                <div class="menuUsuario">
                     <ul class="menu2">
                            <?php if(isset($_SESSION["usuario"]["sesion_iniciada"]) && $_SESSION["usuario"]["sesion_iniciada"] == true) { ?>
                            <li><a href="index.php?opcion=cerrarSesion">Cerrar sesión</a></li>
							<li><a href="index.php?opcion=configusuario">Config<? echo $_SESSION["usuario"]["correo"]; ?></a></li>
							<li><a href="index.php?opcion=carrito">Carrito</a></li><?php }?>
						</ul>
                </div>
				<?php
					require("./controlador/controlador.php");
					require("./vista/vista.php");

				?>
				<footer class="futer">
                        <div class= "contenidofooter">
                            
                       <h4>Redes sociales.</h4>
				       <a href="#" class="facebook"><img src="imagenes/iconos/facebook.png" /></a> 
				       <a href="#" class="twitter"><img src="imagenes/iconos/twitter.png" /></a> 
				       <a href="#" class="instagram"><img src="imagenes/iconos/instagram.png" /></a> 
				       <a href="#" class="google"><img src="imagenes/iconos/google.png" /></a> 
				       <a href="#" class="youtube"><img src="imagenes/iconos/youtube.png" /></a> 
				    
				    
                        <h4 class="contactos">Contactos.</h4>
				        <article class="telefono">Teléfono: xxx-xx-xx-xx</article>
				        <article class="correo">Correo: mailejemplo@mailejemplo.com</article>
				    
                        </div>
				    
				</footer>	
		</body>
	</html>