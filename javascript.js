function comprobarTecla(event) {
	
  var tecla = event.keyCode & event.which;
  if (tecla==13) {
		
		var texto = document.getElementById("texto-busqueda");
		location.href = "index.php?opcion=busqueda&texto-busqueda=" + texto.value;
	}
}