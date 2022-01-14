
<?php
$sql = "SELECT * FROM usuarios;";
if(isset($_POST["registrarse"])){
	$nuevoUsuario = new crearUsuario($_POST["nombre"],$_POST["apellidos"], $_POST["fecha_nacimiento"], $_POST["correo"],$_POST["contrasena"]); 
}

if($cantidad = $conn->query($sql)){
	$cantidad = $cantidad->num_rows;
}else{
	echo "Error en la consulta";
}
?>
 <form action="index.php?opcion=crearusuario" method="POST" name="registrarse" class="registrarse">
  <article>REGISTRAR USUARIO</article>
  Nombre:
  <input type="text" name="nombre" placeholder="Nombre">
  <br />
  Apellidos:
  <input type="text" name="apellidos" placeholder="Apellidos">
  <br />
  Fecha de nacimiento:
  <input type="date" name="fecha_nacimiento" placeholder="Fecha de nacimiento"  max="2000-05-11">
  <br />
  Correo:
  <input type="email" name="correo" placeholder="Correo">
  <br />
  Contraseña:
  <input type="password" name="contrasena" placeholder="contraseña">
  <br><br>
  <input type="submit" name="registrar" value="Registrarse">
</form>
<form action="index.php" class="tenercuenta">
	¿Tienes ya una cuenta?
	<a href="index.php?opcion=iniciarsesion">Iniciar sesión</a>
</form>