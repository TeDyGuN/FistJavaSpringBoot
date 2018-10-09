INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Ted', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Behimar', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Miriam', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Arnold', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Jonas', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Roberto', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Pedro', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Gary', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES('Cesar', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Karen', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Deysi', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Claudia', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Samanta', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Carlos', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Charlie', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Ivan', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Jorge', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Paul', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Uriel', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Gabriel', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Thiago', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Santiago', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'Richard', 'Carrasco', 'ted_cc@hotmail.com', '2018-08-16', '');
INSERT INTO clientes(nombre, apellido, email, created_at, foto) VALUES( 'John', 'Alvarado', 'as@hotmail.com', '2018-08-16', '');

INSERT INTO productos (nombre, precio, created_at) VALUES('Panasonic Pantalla LCD', 259990, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Sony Camara digital DSC-W320B', 123490, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Apple iPod shuffle', 1499990, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Sony Notebook Z110', 37990, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Hewlett Packard Multifuncional F2280', 69990, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Bianchi Bicicleta Aro 26', 69990, NOW());
INSERT INTO productos (nombre, precio, created_at) VALUES('Mica Comoda 5 Cajones', 299990, NOW());

/* Creamos algunas facturas */
INSERT INTO facturas (descripcion, observacion, cliente_id, created_at) VALUES('Factura equipos de oficina', null, 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 1);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(2, 1, 4);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 5);
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(1, 1, 7);

INSERT INTO facturas (descripcion, observacion, cliente_id, created_at) VALUES('Factura Bicicleta', 'Alguna nota importante!', 1, NOW());
INSERT INTO facturas_items (cantidad, factura_id, producto_id) VALUES(3, 2, 6);