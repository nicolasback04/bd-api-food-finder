--En caso de que utilize una consola cmd para crear la base de datos utilizar el siguiente comando
--para acceder a postgres
psql -d postgres -U postgres

--Si ingresa postgres puede utilizar directamente el siguiente codigo en un script
create database restaurante;

-- acceder a la base de datos una vez creada desde Cmd
\c restaurante;

--se utiliza en PostgreSQL para crear la extensión PostGIS si aún no está instalada en la base de datos actual
CREATE EXTENSION IF NOT EXISTS postgis;
