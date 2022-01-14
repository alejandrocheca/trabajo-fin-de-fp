<?php
if(isset($_GET["opcion"])){
	
	switch($_GET["opcion"]) {
        case "crearusuario":
            $usuario = new Usuario();
            $usuario->crearUsuario($_POST["nombre"],$_POST["apellidos"], $_POST ["fecha_nacimiento"],$_POST ["correo"], $_POST ["contrasena"]);
            break;
        case "modificarUsuario":
            $usuario = new Usuario();
            $usuario->modificarUsuario($_POST["nombre"],$_POST["apellidos"], $_POST["fecha_nacimiento"], $_POST["correo"],$_POST["contrasena"]);
            break;
		case "registrarse":
			require("registrarse.php");
			break;
        case "configusuario":
			require("opcionesUsuario.php");
			break;
        
        case "cerrarSesion":
			require("modelo/cerrarSesion.php");
			break;
        case "eliminarCuenta":
			$usuario = new Usuario();
            $usuario->eliminarUsuario($_POST["correo"]);
			break;
		case "iniciarsesion":
            require ("iniciarsesion.php");
			break;
		case "comprarArticulos": //forma de recogida
            require("vista/compra.php");
            break;

        case "compra":
            echo "Gracias por la compra";
			break;
        case "add":
            $carrito = new Carritos();		
			$carrito->add($_GET["id_componente"]);
			break;
		// EN SWITCH CASE PONER TODAS LAS PAGINAS MENOS INDEX
        case "busqueda":  
			$componente = new Componentes();		
			$array = $componente->buscarComponentes($_GET["texto-busqueda"]);
			break;
        case "carrito":
            $carrito = new Carritos();		
			$carrito->mostrarCarrito();
            break;
        case "detalleComponentes":
            $detalle = new Componentes();
	$fila = $detalle->detalleComponentes($_GET["id_componente"]);
	echo "<div class='articulos'>";
	
	echo "
					<div class='articulo'>
						<a href='".$fila[0]."'>".$fila[1]."</a>
                        <img src='".$fila[2]."'>
						<h5>".$fila[3]."</h5>
						<h5>precio: ".$fila[4]."</h5>
					</div>
				 ";	
	echo "</div>";
            break;
		case "motores":
		case "carroceria":
        case "aceite":
        case "ruedas":
        case "liquidos":
			$componente = new Componentes();
			$array = $componente->filtrarComponentes($_GET["opcion"]);
			break;
        	
		}
	if(isset($componente)) {
		echo "<div class='articulos'>";
			while ($fila = $array->fetch_assoc()) {

			echo "<div class='articulo'>
            <form action='index.php' method='GET'>
                                <input type='hidden' name='id_componente' value='".$fila["id_componente"]."' />
								<img src='".$fila["ruta_imagen"]."'>
								<h3 href='".$fila["nombre"]."'></h3>
								<h4>precio: ".$fila["precio"]."</h4>
								<button class='detalles'>Ver detalles</button>
								<button class='carrito'><a href='index.php?opcion=add&id_componente=".$fila["id_componente"]."'>Añadir al carrito</a></button>
                                </form>
							</div>
						 ";	
				
			}
			echo "</div>";
	}
} else {
	$componente = new Componentes();
	$array = $componente->mostrarComponentes();
	echo "<div class='articulos'>";
	while ($fila = $array->fetch_assoc()) {
        echo "
                <div class='articulo'>
                    <form action='index.php' method='GET'> 
                            <input type='hidden' name='id_componente' value='".$fila["id_componente"]."' />
                            <img src='".$fila["ruta_imagen"]."'>
                            <h3>".$fila["nombre"]."</h3>
                            <h4>precio: ".$fila["precio"]."</h4>
                            <button class='detalles' ><a href='index.php?opcion=detalleComponentes&id_componente=".$fila["id_componente"]."'>Ver detalles</a></button>
                            <button class='carrito'><a href='index.php?opcion=add&id_componente=".$fila["id_componente"]."'>Añadir al carrito</a></button>
                    </form>
                </div>
                     ";	

	}
	echo "</div>";
	
}
?>

