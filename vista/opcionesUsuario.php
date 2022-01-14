<?php
$sql = "SELECT * FROM usuarios WHERE correo='".$_SESSION["usuario"]["correo"]."';";
if(isset($_POST["registrarse"])){
	$nuevoUsuario = new Usuario();
    $nuevoUsuario->crearUsuario($_POST["nombre"],$_POST["apellidos"], $_POST["fecha_nacimiento"], $_POST["correo"],$_POST["contrasena"]); 
}

if($cantidad = $conn->query($sql)){
    $row = $cantidad->fetch_row();
	$cantidad = $cantidad->num_rows;
}else{
	echo "Error en la consulta";
}

?>   
<form action="index.php?opcion=modificarUsuario" method="POST" name="configuracion" class="configuracion">
 <label>Configuración del usuario.</label><br />
 <label>Cambios en cuenta.</label><br />
  Nombre:
  <input type="text" name="nombre" placeholder="Nombre" value="<?php echo $row[0]; ?>">
  <br />
  Apellidos:
  <input type="text" name="apellidos" placeholder="Apellidos" value="<?php echo $row[1]; ?>">
  <br />
  Fecha de nacimiento:
  <input type="date" name="fecha_nacimiento" placeholder="Fecha de nacimiento"  value="<?php echo $row[2]; ?>">
  <br />
  Correo:
  <input type="email" name="correo" placeholder="Correo"  value="<?php echo $row[3]; ?>">
  <br />
  Contraseña:
  <input type="password" name="contrasena" placeholder="contraseña" value="<?php echo $row[4]; ?>">
  <br><br>
  <input type="submit" name="configurar" value="Guardar cambios">
</form>


<form action="index.php?opcion=eliminarCuenta" method="POST" name="eliminarcuenta" class="eliminarcuenta">
    <label>¿Ya no quieres tener una cuenta? Puedes eliminarla cuando quiera.</label><br />
    <label>Una vez dado click al siguente botón, se borrará por completo la cuenta.</label><br />
    <input type="hidden" name="correo" placeholder="Correo"  value="<?php echo $row[3]; ?>">
    <input type="submit" name="eliminarCuenta" value="Eliminar cuenta" class="botonelimcuenta">
</form>