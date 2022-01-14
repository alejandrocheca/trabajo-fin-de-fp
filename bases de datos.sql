CREATE DATABASE basededatoscoches;
USE basededatoscoches;

CREATE TABLE usuarios(
nombre VARCHAR(50),
apellidos VARCHAR(100),
fecha_nacimiento DATE,
correo VARCHAR(50) PRIMARY KEY,
contrasena VARCHAR(100)

);


CREATE TABLE vehiculos(
id_vehiculo INT(1) AUTO_INCREMENT PRIMARY KEY,
tipo_vehiculo VARCHAR(40)
);

CREATE TABLE marca(
id_marca INT(4) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
id_vehiculo INT(1),

FOREIGN KEY (id_vehiculo) REFERENCES vehiculos (id_vehiculo)
);

CREATE TABLE componentes(
id_componente INT(4) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
categoria VARCHAR(50), -- (TERMINO GENERAL, POR EJEMPLO MOTOR O LLANTAS)
ruta_imagen VARCHAR(150),
descripcion VARCHAR(200),
id_vehiculo INT(4),
cantidad_disponible INT(8),
precio DOUBLE (7,2),

FOREIGN KEY (id_vehiculo) REFERENCES vehiculos (id_vehiculo)
);
UPDATE usuarios SET nombre = 'a', apellidos = ' a', fecha_nacimiento = '1991-01-01', correo = 'a@a.es', contrasena = '1234' WHERE correo= 'a@a.es';
 SELECT * FROM usuarios; 
CREATE TABLE pedidos(
id_pedido INT(4) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
correo VARCHAR(50),
id_componente INT(4),
cantidad INT(8),


FOREIGN KEY (correo) REFERENCES usuarios(correo),
FOREIGN KEY (id_componente) REFERENCES componentes(id_componente)
);

CREATE TABLE comentarios(
id_comentario INT(4) AUTO_INCREMENT PRIMARY KEY,
nombre VARCHAR(50),
descripcion VARCHAR(2000),
correo VARCHAR(70)
);
-- SELECT id_componente, nombre, ruta_imagen, precio FROM componentes WHERE categoria LIKE 'motores';
-- INSERT INTO usuarios(nombre, apellidos,fecha_nacimiento,correo, contrasena) VALUES('a', 'a', '2000-02-12','a@a.es','1234');-

-- INSERT INTO usuarios (nombre, apellidos, fecha_nacimiento, correo) VALUES('','','','');
-- INSERT INTO usuarios (nombre, apellidos, fecha_nacimiento, correo) VALUES('','','','');
-- INSERT INTO usuarios (nombre, apellidos, fecha_nacimiento, correo) VALUES('','','','');

INSERT INTO vehiculos (tipo_vehiculo) VALUES('Coche');
INSERT INTO vehiculos (tipo_vehiculo) VALUES('Moto');
-- select * from componentes;
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Elf','./imagenes/aceitemotor/a1.png','aceite','Aceite para el motor de la marca ELF, 1 litro turbo diesel IOW-40',42,21.95,1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Helix','./imagenes/aceitemotor/a2.jpg','aceite','Aceite para el motor de la marca HELIX, 1 litro, ltra, IOW-40',63,32.95,1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Ravenov','./imagenes/aceitemotor/a4.jpg','aceite','Aceite para el motor de la marca RAVENOL, 1 litro full-tech OW-40',23,29.95,2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Liqui Moly','./imagenes/aceitemotor/a5.jpg','aceite','Aceite para el motor de la marca LIQUI MOLY, 1 litro NACHFÜL-ÖL, 5W-40',64,35.95,2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor ELF','./imagenes/aceitemotor/a3.png','aceite','Aceite para el motor de la marca ELF, 1 litro turbo diesel IOW-40',120,18.95,1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Motul','./imagenes/aceitemotor/a6.jpg','aceite','Aceite para el motor de la marca MOTUL SPECIFIC, 1 litro modelo 2312 OW-30',31,15.95,2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor','./imagenes/aceitemotor/a7.jpg','aceite','Aceite para el motor de la marca GTX, 1 litro ultracleaner IOW-40',10,27.95,1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Turboral','./imagenes/aceitemotor/a8.jpg','aceite','Aceite para el motor de la marca TURBORAL, 1 litro IOW-40',124,40.95,2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aceite motor Elv Evolution','./imagenes/aceitemotor/a9.png','aceite','Aceite para el motor de la marca ELF EVOLUTION, 1 litro 500 turbodiesel SAE 15W-40',53,30.95,1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a1.jpg','aire habitaculo','Aceite para el motor',9,5.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a2.jpg','aire habitaculo','Aceite para el motor',3,3.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a3.jpg','aire habitaculo','Aceite para el motor',4,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a4.jpg','aire habitaculo','Aceite para el motor',14,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a5.jpg','aire habitaculo','Aceite para el motor',25,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a6.jpg','aire habitaculo','Aceite para el motor',14,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Aire habitáculo','./imagenes/airehabitaculo/a7.png','aire habitaculo','Aceite para el motor',53,35.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a1.jpg','Amortiguador','Amortiguador individual 12mm Ø',63,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a2.png','Amortiguador','Amortiguador individual 16mm Ø',34,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a3.jpg','Amortiguador','Amortiguador individual 15mm Ø',16,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a4.png','Amortiguador','Pack amortiguador con engranajes 19mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a5.png','Amortiguador','Pack amortiguador con engranajes 17mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a6.png','Amortiguador','Amortiguador individual 12mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a7.png','Amortiguador','Pack amortiguador con engranajes 16mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a8.jpg','Amortiguador','Amortiguador individual 13mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a9.png','Amortiguador','Pack amortiguador con engranajes 14mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a10.png','Amortiguador','Pack amortiguador con engranajes 15mm Ø',81,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Amortiguador','./imagenes/amortiguadores/a11.jpg','Amortiguador','Amortiguador individual 16mm Ø',81,35.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a1.jpg','Bujía','Pack de 6 bujías',42,70.90, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a2.jpg','Bujía','Pack de 4 bujías',25,40.90, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a3.jpg','Bujía','Una unidad de bujía',31,22.99, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a4.jpg','Bujía','Pack de 4 bujías',52,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a5.jpg','Bujía','Aceite para el motor',43,28.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Bujia','./imagenes/bujias/a6.jpg','Bujía','Una unidad de bujía',64,37.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Disco de freno','./imagenes/discosfrenos/a1.jpg','Disco de freno','Disco de frno 23 mm Ø',13,55.70, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Disco de freno','./imagenes/discosfrenos/a2.jpg','Disco de freno','Disco de frno 20 mm Ø',61,49.99, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Disco de freno','./imagenes/discosfrenos/a3.jpg','Disco de freno','Disco de frno 18 mm Ø',73,60.50, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Disco de freno','./imagenes/discosfrenos/a4.jpg','Disco de freno','Disco de frno 16 mm Ø',201,54.96, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Disco de freno','./imagenes/discosfrenos/a5.jpg','Disco de freno','Disco de frno 27 mm Ø',100,46.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a1.jpg','Motor','Filtro de metal para lubricar el motor 50 mm Ø',14,65.90, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a2.jpg','Motor','Filtro de metal para lubricar el motor 43 mm Ø',16,55.50, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a3.jpg','Motor','Filtro de metal para lubricar el motor 38 mm Ø',31,38.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a4.jpg','Motor','Filtro de metal para lubricar el motor 60 mm Ø',10,90.99, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a5.jpg','Motor','Filtro de metal para lubricar el motor 55 mm Ø',9,80.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a6.jpg','Motor','Filtro de metal para lubricar el motor 35 mm Ø',5,45.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Filtro de aceite','./imagenes/filtroaceite/a7.jpg','Motor','Filtro de metal para lubricar el motor 47 mm Ø',92,54.95, 2);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpiaparabrisas','./imagenes/limpiaparabrisas/a1.jpg','Carrocería','Limpiaparabrisas unidad para sedanes',124,9.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpiaparabrisas','./imagenes/limpiaparabrisas/a2.jpg','Carrocería','Limpiaparabrisas unidad para todoterrenos',61,55.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpiaparabrisas','./imagenes/limpiaparabrisas/a3.jpg','Carrocería','Pack de limpiaparabrisas para chches deportivos',17,99.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpiaparabrisas','./imagenes/limpiaparabrisas/a4.jpg','Carrocería','Pack de limpiaparabrisas para cualquier tipo de coche',23,60.50, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpiaparabrisas','./imagenes/limpiaparabrisas/a5.jpg','Carrocería','Limpiaparabrisas unidad para coches familiares',26,11.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a1.png','ruedas','Llantas negras con bordes rojos deportivas 34mm Ø',54,89.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a2.png','ruedas','Llantas plateadas 32mm Ø',10,40.70, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a3.png','ruedas','Llantas negras 46mm Ø',123,60.43, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a4.jpg','ruedas','Llantas doradas 48 mm Ø',71,89.99, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a5.jpg','ruedas','Llantas plateadas 60mm Ø',91,67.31, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Llantas','./imagenes/llantas/a6.png','ruedas','Llantas plateadas 32mm Ø',14,70.21, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c1.jpg','ruedas','Pack 4 neumáticos para coches monovolúmenes',31,199.99, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c2.jpg','ruedas','Pack 4 neumáticos para coches coches pequeños',31,120.30, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c3.jpg','ruedas','Pack 4 neumáticos para coches de tamaño normales',31,150.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c4.jpg','ruedas','Pack 4 neumáticos para coches furgonetas',31,155.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c5.jpg','ruedas','Pack 4 neumáticos para coches deportivos',31,210.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/c6.jpg','ruedas','Pack 4 neumáticos para coches todoterrenos',31,150.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m1.jpg','ruedas','Neumatico delantero y trasero para moto deportiva',31,80.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m2.jpg','ruedas','Neumático delantero y trasero moto motocross',31,60.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m3.jpg','ruedas','Neumático delantero moto deportiva',31,67.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m4.jpg','ruedas','Pack 2 neumáticos delantero y trasero',31,99.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m5.jpg','ruedas','Pack 2 neumáticos delantero y trasero lisos',31,110.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m6.jpg','ruedas','Pack 2 pares de neumáticos de tres grosores distintas',31,179.95, 2);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Neumaticos','./imagenes/neumaticos/m7.jpg','ruedas','Pack 2 neumáticos delanteros motos',31,70.95, 2);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a1.jpg','Carrocería','2 retrovisores de repuesto todorerrenos',31,29.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a2.jpg','Carrocería','2 retrovisores de repuesto sedanes',61,15.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a3.jpg','Carrocería','2 retrovisores de repuesto monovolúmenes',13,30.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a4.jpg','Carrocería','2 retrovisores de repuesto coches pequeños',41,19.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a5.jpg','Carrocería','2 retrovisores de repuesto coches medianos',18,25.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a6.jpg','Carrocería','2 retrovisores de repuesto codhes deportivos',61,50.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a7.jpg','Carrocería','2 retrovisores de repuesto coches familiares',14,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Retrovisores','./imagenes/retrovisores/a8.png','Carrocería','2 retrovisores de repuesto deportivos',61,70.95, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a1.png','Carrocería','Tubo de escape coches grandes',14,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a2.jpg','Carrocería','Tubo de escape coches pequeños',12,40.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a3.jpg','Carrocería','Tubo de escape coches pequeños',51,43.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a4.png','Carrocería','Tubo de escape coches grandes',31,35.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a5.jpg','Carrocería','Tubo de escape coches grandes',11,67.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a6.jpg','Carrocería','Tubo de escape coches grandes',41,75.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a7.jpg','Carrocería','Tubo de escape coches grandes',51,53.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a8.jpg','Carrocería','Tubo de escape coches grandes',31,24.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a9.jpg','Carrocería','Tubo de escape coches de todo tipo',43,53.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a10.jpg','Carrocería','Tubo de escape coches de todo tipo',81,22.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/a11.png','Carrocería','Tubo de escape coches de todo tipo',91,53.95, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/m1.jpg','Carrocería','Tubo de escape moto',91,30.00, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/m2.jpg','Carrocería','Tubo de escape moto',91,59.40, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/m3.jpg','Carrocería','Tubo de escape moto',91,39.55, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Tubos escape','./imagenes/tubosescape/m4.jpg','Carrocería','Tubo de escape moto',91,25.99, 1);

INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpia cristales','./imagenes/limpiacristales/a1.jpg','liquidos','Bote 0,7 litros para impiar cristales a mano',90,10, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpia cristales','./imagenes/limpiacristales/a2.jpg','liquidos','Bote 0,7 litros para impiar cristales a mano',90,10, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpia cristales','./imagenes/limpiacristales/a3.jpg','liquidos','Bote 0,7 litros para impiar cristales a mano',90,10, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpia cristales','./imagenes/limpiacristales/a4.jpg','liquidos','Pack de 4 bote 0,5 litros para impiar cristales a mano',90,10, 1);
INSERT INTO componentes(nombre,  ruta_imagen, categoria, descripcion, cantidad_disponible, precio, id_vehiculo) VALUES ('Limpia cristales','./imagenes/limpiacristales/a5.png','liquidos','Bote 1 litro1 para impiar cristales automáticamente',90,10, 1);

