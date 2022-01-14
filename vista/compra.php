

<article>Rellena los campos de tu método de recogida.</article>
<form action="index.php?opcion=compra" method="POST" name="recogerPedido" class="recogerPedido">
    <label>Elige tu tienda para recoger el pedido</label><br />
    Ciudad: <select name="ciudad" class="ciudad">
                <option value="Madrid">Madrid</option>
                <option value="Murcia">Region de Murcia</option>
                <option value="Valenciana"> Valenciana</option>
                
            </select><br />
    Tienda: <select name="tienda" class="tienda">
                <option value="Norauto">Norauto</option>
                <option value="CasaBernardino">Casa Bernardino</option>
                <option value="Vermauto"> Vermauto SL</option>
                <option value="Rotolec"> Rotolec</option>
            </select><br />
    Fecha de entrega: <input type="date" value="<?php echo date('Y-m-d'); ?>"><br /><br />

  <input type="submit" name="enviarEntrega" value="Enviar entrega">
</form>
<form action="./index.php?opcion=compra" method="POST" name="domicilioPedido" class="domicilioPedido">
    <label>Otórganos tus datos para llevartelo a domicilio</label><br />
    Ciudad: <input type="text" name="Ciudad" placeholder="Ciudad"><br />
    Calle: <input type="text" name="calle" placeholder="calle"><br />
    Cod. postal: <input type="number" name="CodPostal" placeholder="CodPostal"><br />
    Tienda: <select name="tienda" class="tienda">
                <option value="Norauto">Norauto</option>
                <option value="CasaBernardino">Casa Bernardino</option>
                <option value="Vermauto"> Vermauto SL</option>
                <option value="Rotolec"> Rotolec</option>
            </select><br />
    Fecha de entrega: <input type="date" value="<?php echo date('Y-m-d'); ?>"><br />
    
  <input type="submit" name="enviarEntrega" value="Enviar entrega">
</form>