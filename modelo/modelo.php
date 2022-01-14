<?php

// FUNCIONES PARA USUARIO
class Usuario{
    
      function crearUsuario($nombre,$apellidos, $fecha_nacimiento, $correo,$contrasena){ 
          require('db/conexion.php');
          $sql= "INSERT INTO usuarios(nombre,apellidos,fecha_nacimiento,correo, contrasena) VALUES('".$nombre."',' ".$apellidos."',
               '".$fecha_nacimiento."','".$correo."','".$contrasena."')";
                if($conn->query($sql)===true){
                 echo "Cuenta creada con exito";
                    header("location: index.php?opcion=iniciarsesion");
                }else{
                  echo "Error al crear la cuenta. Inténtelo otra vez";
                }
        }
    
      function modificarUsuario($nombre,$apellidos, $fecha_nacimiento, $correo, $contrasena){   
          require('db/conexion.php');
               $sql= "UPDATE usuarios SET nombre = '".$nombre."', apellidos = '".$apellidos."', fecha_nacimiento = '".$fecha_nacimiento."', correo = '".$correo."', contrasena = '".$contrasena."' WHERE correo= '".$correo."';";
                if($conn->query($sql)===true){
                 echo "Cuenta actualizada con exito";
                 header('Location: index.php');
                }else{
                  echo "Error al actualizar la cuenta. Inténtelo otra vez";
                }
        }
    
    function comprobarUsuario($correo, $contrasena){         
        require('db/conexion.php');
               $sql= "SELECT correo, contrasena FROM usuarios WHERE correo LIKE '".$correo."' AND contrasena LIKE '".$contrasena."';";
                $comprobar = $conn->query($sql);
                if($comprobar){
                  $comprobar = $comprobar->num_rows;
                    if($comprobar == 1){
                        
                        session_start();
                        $_SESSION["usuario"]["correo"] = $correo;
                        $_SESSION["usuario"]["sesion_iniciada"]=true;
                        header('Location: index.php');
                    }else{
                        echo "Contraseña y/o correo incorrectos";
                    }
                }else{
                  echo "Error en la sentencia.";
                }    
    }

     function eliminarUsuario($correo){
         require('db/conexion.php');
               $sql= "DELETE FROM usuarios WHERE correo ='".$correo."'";
                if($conn->query($sql)===true){
                 echo "Eliminado con exito";
                    require("cerrarSesion.php");
                    header("Location: index.php");
                }else{
                  echo "Error de eliminación de cuenta";
                }
            }


}

// FUNCIONES PARA COMPONENTES
class Componentes {
	
	function mostrarComponentes(){
        require('db/conexion.php');
        // SELECCIONA 20 componentes aleatoriamente
        $sql = "select id_componente, nombre, ruta_imagen, precio FROM componentes ORDER BY RAND() LIMIT 20";
        		
        if($array = $conn->query($sql)){
            return $array;
        }else{
            echo "Error al mostrar los datos. Inténtelo otra vez";
        }		
	}
	function detalleComponentes($id_componente){
        require('db/conexion.php');
        $sql = "SELECT id_componente, nombre, ruta_imagen, descripcion, precio FROM componentes WHERE id_componente = ".$id_componente;
        
        if($result = $conn->query($sql)){
            $row = $result->fetch_row();
            return $row;
        } else { 
          echo "Error al mostrar los datos. Inténtelo otra vez";
        }
	}
	
	function buscarComponentes($cadena){
        require('db/conexion.php');
        $sql = "SELECT id_componente, nombre, ruta_imagen, precio FROM componentes WHERE nombre LIKE '%".$cadena."%'";
		if($array = $conn->query($sql)){
            return $array;
        }else{
                  echo "Error al mostrar los datos. Inténtelo otra vez";
        }
		
	}
		function filtrarComponentes($cadena){
            require('db/conexion.php');
            
			$sql = "SELECT id_componente, nombre, ruta_imagen, precio FROM componentes WHERE categoria LIKE '%".$cadena."%'";
            if($array = $conn->query($sql)){
                return $array;
            }else{
              echo "Error al mostrar los datos. Inténtelo otra vez";
                }
	}
    
}

// FUNCIONES PARA CARRITO
class Carritos{
    
    function add($id){
         
          
        $id=intval($id); 
          
        if(isset($_SESSION['carrito'][$id])){ 
              
            $_SESSION['carrito'][$id]['cantidad']++; 
            //print_r($_SESSION);  
        }else{ 
              
            $sql="SELECT id_componente, ruta_imagen, nombre, cantidad_disponible,precio FROM componentes
                WHERE id_componente=".$id;
            require('db/conexion.php');
            if($result = $conn->query($sql)){
                $row = $result->fetch_row();    
                $_SESSION['carrito'][$row[0]]=array(
                        "id" => $row[0],
                        "ruta_imagen" => $row[1],
                        "nombre" => $row[2],
                        "cantidad" => 1, 
                        "precio" => $row[4] 
                );
                header("Location: index.php");
            }else{
              echo "Error al mostrar los datos. Inténtelo otra vez";
            }       
              
        } 
          
    }
    
    function mostrarCarrito(){
        if(isset($_SESSION['carrito'])){ 
            echo "<form action='index.php?opcion=comprarArticulos' method='POST' name='recogerPedido' class='recogerPedido'>";
              foreach($_SESSION["carrito"] as $carrito) {
                echo "<div class='articuloCarrito'>";
                echo "<img src='".$carrito["ruta_imagen"]."' />";  
                echo "<h5>".$carrito["nombre"]." Cantidad: "."</h5>";
                echo "<h5> Cantidad: ".$carrito["cantidad"]."</h5>";
                echo "<h5>Precio: ".$carrito["precio"]."€</h5>";
                echo "</div>";
              } 
             echo "<br /><input type='submit' name='ComprarArticulos' value='CompraProductos' class='botonRegoger'/>";
             echo "</form>";

            
        }
        
    }
    

}
?> 