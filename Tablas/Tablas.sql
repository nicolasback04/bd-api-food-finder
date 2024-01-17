CREATE TABLE usuarios (
id_usuario integer PRIMARY KEY,
usuario varchar(50) NOT NULL,
contrasenia varchar(50) NOT NULL,
nombre varchar(45) NOT NULL,
tipo_identificacion varchar(3),
identificacion varchar(15),
correo varchar(25),
celular varchar(10) NOT NULL,
estado smallint NOT NULL
);

CREATE TABLE detalle_restaurante (
    id_detalle integer PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    descripcion varchar(250),
    horario_atencion varchar(100) NOT NULL,
    sitio_web varchar(100),
    ubicacion_mapa varchar(250)
);

CREATE TABLE categoria_restaurante (
  id_categoria integer NOT NULL,
  nombre varchar(100) NOT NULL,
  descripcion varchar(250) NULL,
  PRIMARY KEY (id_categoria)
);
CREATE TABLE restaurantes (
    id_restaurante INTEGER PRIMARY KEY,
    nombre varchar(100) NOT NULL,
    correo varchar(45) NOT NULL,
    direccion varchar(50),
    telefono varchar(10),
    nit varchar(15) NOT NULL,
    estado smallint NOT NULL,
    id_categoria integer REFERENCES categoria_restaurante(id_categoria),
   id_detalle integer REFERENCES detalle_restaurante (id_detalle),
   id_usuario integer REFERENCES usuarios (id_usuario)
);

CREATE TABLE auditoria_restaurantes (
  id_auditoria integer NOT NULL,
  operacion varchar(100) NOT NULL,
  fecha TIMESTAMP without time zone NOT NULL,
  usuario varchar(100) NOT NULL,
  PRIMARY KEY (id_auditoria)
);

CREATE TABLE imagenes_restaurante (
  id_imagen integer NOT NULL,
  imagen bytea NOT NULL,
  id_restaurante int NOT NULL,
  PRIMARY KEY (id_imagen),
  FOREIGN KEY (id_restaurante) REFERENCES restaurantes (id_restaurante)
);

CREATE TABLE categoria_menu (
    id_categoria INTEGER PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(250)
);

CREATE TABLE menu (
    id_menu SERIAL PRIMARY KEY,
    nombre VARCHAR(100),
    descripcion VARCHAR(250),
    precio DECIMAL(12, 2),
    disponibilidad INTEGER,
    id_categoria INTEGER,
    id_restaurante INTEGER,  
    FOREIGN KEY (id_categoria) REFERENCES categoria_menu(id_categoria),
    FOREIGN KEY (id_restaurante) REFERENCES restaurantes(id_restaurante) 
);

CREATE TABLE imagenes_menu (
    id_imagen INTEGER PRIMARY KEY,
    ruta_imagen varchar(150),
    id_menu INTEGER,
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu)
);

CREATE TABLE ingredientes (
  id_ingrediente integer NOT NULL,
  nombre varchar(100) NOT NULL,
  descripcion varchar(250) NULL,
  precio_unidad decimal(12,2) NOT NULL,
  PRIMARY KEY (id_ingrediente)
);

CREATE TABLE menu_ingredientes (
    id_menu INTEGER,
    id_ingrediente INTEGER,
    PRIMARY KEY (id_menu, id_ingrediente),
    FOREIGN KEY (id_menu) REFERENCES menu(id_menu),
    FOREIGN KEY (id_ingrediente) REFERENCES ingredientes(id_ingrediente)
);

