<?php
	$componente = new Componentes();
	$fila = $componente->detalleComponentes($_GET["id_compomente"]);
	echo "<div class='articulos'>";
	
	echo "
					<div class='articulo'>
						<img src='".$fila["ruta_imagen"]."'>
						<a href='".$fila["nombre"]."'></a>
						<h5>".$fila["descripcion"]."</h5>
						<h5>precio: ".$fila["precio"]."</h5>
						<button class='detalles'>Ver detalles</button>
					</div>
				 ";	
	echo "</div>";
	
}    
    
?>  