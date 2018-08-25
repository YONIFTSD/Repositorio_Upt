
--CREATE DATABASE db_repositorio;

CREATE DATABASE bd_repositorio;
use  bd_repositorio;

--TABLA BASE
CREATE TABLE tbl_Editorial (
    Id_Editorial int IDENTITY PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	Direccion varchar(255) NOT NULL,
	Estado int,
	Eliminado int,
    Fecha_Registro date
);


--TABLA BASE
CREATE TABLE tbl_Palabra (
    Id_Palabra int IDENTITY PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	Estado int,
	Eliminado int,
    Fecha_Registro date
);





--TABLA BASE
CREATE TABLE tbl_Materia (
    Id_Materia int IDENTITY PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	Estado int,
	Eliminado int,
    Fecha_Registro date
);



--TABLA BASE
CREATE TABLE tbl_Comunidades (
    Id_Comunidad int IDENTITY PRIMARY KEY,
    Nombre varchar(255) NOT NULL,
    Descripcion varchar(255),
	Estado int,
	Eliminado int,
    Fecha_Registro date
);

--TABLA BASE
CREATE TABLE tbl_Autor (
    Id_Autor int IDENTITY PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	Apellido varchar(255) NOT NULL,
    Fecha_De_Nacimiento date,
	Estado int,
	Eliminado int,
    Fecha_Registro date
);





--TABLA BASE
CREATE TABLE tbl_Fichero (
    Id_Fichero int IDENTITY PRIMARY KEY,
	Nombre varchar(255) NOT NULL,
	Descripcion varchar(255) NOT NULL,
	Fichero varchar(255) NOT NULL,
	Tamanio varchar(255) NOT NULL,
	Formato varchar(255) NOT NULL,
	Estado int,
	Eliminado int,
    Fecha_Registro date
);



CREATE TABLE tbl_Subcomunidades (
    Id_Subcomunidad int IDENTITY PRIMARY KEY,
    Id_Comunidad  int FOREIGN KEY REFERENCES tbl_Comunidades (Id_Comunidad),
	Nombre varchar(255) NOT NULL,
    Descripcion varchar(255),
	Estado int,
	Eliminado int,
    Fecha_Registro date
);




CREATE TABLE tbl_Colecciones (
    Id_Coleccion int IDENTITY PRIMARY KEY,
    Id_Subcomunidad  int FOREIGN KEY REFERENCES tbl_Subcomunidades (Id_Subcomunidad),
	Nombre varchar(255) NOT NULL,
    Descripcion varchar(255),
	Estado int,
	Eliminado int,
    Fecha_Registro date
);



CREATE TABLE tbl_Articulo (
    Id_Articulo int IDENTITY PRIMARY KEY,
	Titulo varchar(255) NOT NULL,
	Id_Autor  int FOREIGN KEY REFERENCES tbl_Autor (Id_Autor),
	Id_Coleccion  int FOREIGN KEY REFERENCES tbl_Colecciones (Id_Coleccion),
	Id_Materia  int FOREIGN KEY REFERENCES tbl_Materia (Id_Materia),
	Id_Editorial  int FOREIGN KEY REFERENCES tbl_Editorial (Id_Editorial),
	Id_Palabra int FOREIGN KEY REFERENCES tbl_Palabra (Id_Palabra),
	Id_Fichero int FOREIGN KEY REFERENCES tbl_Fichero (Id_Fichero),
	Fecha_De_Publicacion date NOT NULL,
	Resumen text NOT NULL,
	Link varchar (250),
	Estado int,
	Eliminado int,
    Fecha_Registro date
);



--TABLA BASE
CREATE TABLE tbl_Usuario (
    Id_Usuario int IDENTITY PRIMARY KEY,
	Direccion_IP varchar(255) NOT NULL,
	Pais varchar(255) NOT NULL,
	Eliminado int,
	Estado int,
);



CREATE TABLE tbl_Consulta_Trabajo (
    Id_Consulta int IDENTITY PRIMARY KEY,
    Id_Usuario  int FOREIGN KEY REFERENCES tbl_Usuario (Id_Usuario),
);


