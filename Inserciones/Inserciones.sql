--Insert usuarios: (validado)

INSERT INTO usuarios (id_usuario, usuario, contrasenia, nombre, tipo_identificacion, identificacion, correo, celular, estado)
VALUES (1, 'john_doe', 'password123', 'John Doe', 'CC', '1081100006', 'john.doe@example.com', '1234567890', 1);

INSERT INTO usuarios (id_usuario, usuario, contrasenia, nombre, tipo_identificacion, identificacion, celular, estado)
VALUES (2, 'jane_smith', 'password456', 'Jane Smith', 'CC', '1083255214', '3112596328', 1);

INSERT INTO usuarios (id_usuario, usuario, contrasenia, nombre, tipo_identificacion, identificacion, celular,estado)
VALUES (3, 'sam_jones', 'password789', 'Sam Jones', 'CC', '1083250003','3202589563', 1);

INSERT INTO usuarios (id_usuario, usuario, contrasenia, nombre, tipo_identificacion, identificacion, celular, estado)
VALUES (4, 'mary_rogers', 'password999', 'Mary Rogers', 'CC', '1083277841', '3145269875', 1);
—---------------------------------
--Insert detalle_restaurante: (validado)

INSERT INTO detalle_restaurante (
  id_detalle ,
  nombre,
  descripcion,
  horario_atencion,
  sitio_web,
  ubicacion_mapa
) 
VALUES 
  (1, 'Restaurante El Fogón', 'Restaurante de comida típica colombiana', 'De lunes a domingo, de 7:00 a.m. a 10:00 p.m.', 'https://www.restauranteelfogon.com.co', '1.9937291339784133, -76.04580150343034'),
  (2, 'Restaurante La Cocina', 'Restaurante de cocina internacional', 'De lunes a domingo, de 12:00 p.m. a 12:00 a.m.', 'https://www.restaurantelacocina.com.co', '1.9937291339784133, -76.04580150343034'),
  (3, 'Restaurante El Mar', 'Restaurante de comida de mar', 'De lunes a domingo, de 12:00 p.m. a 10:00 p.m.', 'https://www.restauranteelmar.com.co', '1.9937291339784133, -76.04580150343034');
—--------------------------------
--Insert categoria Restaurante: (validado)

INSERT INTO categoria_restaurante (id_categoria, nombre, descripcion) VALUES
(1, 'Comida típica colombiana', 'Restaurantes que sirven platos típicos de la gastronomía colombiana'),
(2, 'Cocina internacional', 'Restaurantes que sirven platos de diferentes partes del mundo'),
(3, 'Comida de mar', 'Restaurantes que sirven platos de pescados y mariscos');

—-----------------------------------
--Insert restaurantes: (validado)
INSERT INTO restaurantes (
  id_restaurante, nombre, correo, direccion, telefono,nit,estado,id_categoria, id_detalle, id_usuario
) VALUES (
1, 'Restaurante El Fogón', 'restauranteelfogon@gmail.com', 'Calle 100 # 10-20', '555-5555', '999999999-9', 1, 1, 1, 1), 
(2,'Restaurante La Cocina','restaurantelacocina@gmail.com', 'Calle 200 # 20-20', '666-6666', '888888888-8', 1, 2, 2, 2), 
(3, 'Restaurante El Mar', 'restauranteelmar@gmail.com', 'Calle 300 # 30-30', '777-7777', '777777777-7', 1, 3, 3, 3);


--Ingredientes: (validado)

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (1, 'Pasta', 'Pasta de trigo', 2900.50);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (2, 'Salsa de tomate', 'Salsa de tomate casera', 1500.20);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (3, 'Queso parmesano', 'Queso parmesano rallado', 3000.00);

-- Otro plato
INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (4, 'Filete de salmón', 'Filete de salmón fresco', 8500.50);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (5, 'Verduras frescas', 'Selección de verduras frescas', 5000.00);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (6, 'Carne de res', 'Carne de res de alta calidad', 7500.00);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (7, 'Pollo', 'Pechuga de pollo fresca', 6000.00);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (8, 'Lechuga', 'Lechuga iceberg fresca', 500.50);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (9, 'Tomate', 'Tomate fresco', 1000.00);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (10, 'Pan', 'Pan artesanal', 2000.00);

INSERT INTO ingredientes (id_ingrediente, nombre, descripcion, precio_unidad)
VALUES (11, 'Pan', 'Pan artesanal', 2500.00);

--Insert categorias_menu

INSERT INTO categoria_menu (id_categoria, nombre, descripcion)
VALUES 
  (1, 'Comidas Rápidas', 'Platos que se preparan y sirven rápidamente.'),
  (2, 'Bebidas', 'Diversas opciones de bebidas, alcohólicas y no alcohólicas.'),
  (3, 'Entradas', 'Platos para abrir el apetito antes del plato principal.'),
  (4, 'Platos Principales', 'Platos principales de carne, pescado, vegetarianos, etc.'),
  (5, 'Postres', 'Deliciosos dulces y postres para satisfacer el paladar.'),
  (6, 'Ensaladas', 'Variedad de ensaladas frescas y saludables.'),
  (7, 'Desayunos', 'Platos ideales para el desayuno y brunch.'),
  (8, 'Sopas y Caldos', 'Sopas y caldos reconfortantes de diferentes estilos.'),
  (9, 'Comida Internacional', 'Platos de diferentes cocinas del mundo.'),
  (10, 'Vegetariano/Vegano', 'Opciones para personas que siguen una dieta vegetariana o vegana.');


--Insert Menu:

-- Ejemplo de inserción de un menú
INSERT INTO menu (nombre, descripcion, precio, disponibilidad, id_categoria, id_restaurante)
VALUES ('Hamburguesa clásica', 'Deliciosa hamburguesa con queso y verduras frescas', 7000.99, 1, 1, 1);

-- Otro ejemplo de inserción de un menú
INSERT INTO menu (nombre, descripcion, precio, disponibilidad, id_categoria, id_restaurante)
VALUES ('Ensalada César', 'Ensalada con pollo a la parrilla y aderezo César', 8500.50, 1, 2, 1);


--Insert imagenes_menu: 

INSERT INTO imagenes_menu (id_imagen, rutaimagen, id_menu)
VALUES (1,’assets/imagenes/menu1.jpg’, 12); 

INSERT INTO imagenes_menu (id_imagen, rutaimagen, id_menu)
VALUES (2, ‘assets/imagenes/menu2.jpg’, 12); 
