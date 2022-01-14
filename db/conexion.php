<!-- EN ESTE ARCHIVO UNICAMENTE CREO Y COMPRUEBO LA CONEXION CON LA BASE DE DATOS-->
<?php
// Crear conexion

$conn = new mysqli('127.0.0.1', 'root', '','basededatoscoches');
$conn->set_charset("utf8");

// Comprobar conexion
  if ($conn->connect_errno){
    die("LA CONEXIÓN NO FUNCIONA".$conn->connect_errno);
  }
?>