
<?php
if(isset($_POST["correo"])) {
    
    $inicio = new Usuario();
    $inicio->comprobarUsuario($_POST["correo"], $_POST["password"]);
    
}
?>
 <form action="./index.php?opcion=iniciarsesion" method="POST" name="iniciosesion" class="iniciosesion">
 <article>INICIAR SESIÓN</article>
  Correo:
  <input type="email" name="correo" placeholder="Correo">
  <br />
  Contraseña:
  <input type="password" name="password" placeholder="contraseña">
  <br><br>
  <input type="submit" name="iniciarsesion" value="Iniciar sesión" class="botoninicio">
</form>
