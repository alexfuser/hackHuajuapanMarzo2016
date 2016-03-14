/*
Created: 12/03/2016
Modified: 12/03/2016
Model: Microsoft SQL Server 2014
Database: MS SQL Server 2014
*/


-- Create tables section -------------------------------------------------

-- Table propuesta

CREATE TABLE [propuesta]
(
 [idPropuesta] Int ) NOT NULL,
 [titulo] Varchar(10) NOT NULL,
 [descripcion] Varchar(max) NOT NULL,
 [conteo] Bigint NOT NULL
)
go

-- Add keys for table propuesta

ALTER TABLE [propuesta] ADD CONSTRAINT [Key2] PRIMARY KEY ([idPropuesta])
go

-- Table usuario

CREATE TABLE [usuario]
(
 [idUsuario] Int ) NOT NULL,
 [Nombre] Varchar(12) NOT NULL,
 [password] Varchar(8) NOT NULL,
 [tipo] Varchar(17) NOT NULL,
 [telefono] Varchar(12) NULL,
 [noSolucion] Bigint NULL
)
go

-- Add keys for table usuario

ALTER TABLE [usuario] ADD CONSTRAINT [Key3] PRIMARY KEY ([idUsuario])
go

-- Table categoria

CREATE TABLE [categoria]
(
 [idCategoria] Int ) NOT NULL,
 [nombrecat] Char(45) NOT NULL
)
go

-- Add keys for table categoria

ALTER TABLE [categoria] ADD CONSTRAINT [Key4] PRIMARY KEY ([idCategoria])
go

-- Table Reporte

CREATE TABLE [Reporte]
(
 [idReporte] Int ) NOT NULL,
 [descripcionrepo] Varchar(1) NOT NULL,
 [foto] Image NOT NULL,
 [conteo] Int NOT NULL
)
go

-- Add keys for table Reporte

ALTER TABLE [Reporte] ADD CONSTRAINT [Key5] PRIMARY KEY ([idReporte])
go

-- Table solucion

CREATE TABLE [solucion]
(
 [idsolucion] Int ) NOT NULL,
 [titulo] Varchar(15) NOT NULL,
 [descripcion] Varchar(200) NOT NULL,
 [fecha] Time NOT NULL,
 [conteo_n] Bigint NOT NULL,
 [conteo_p] Bigint NOT NULL
)
go

-- Add keys for table solucion

ALTER TABLE [solucion] ADD CONSTRAINT [idsolucion] PRIMARY KEY ([idsolucion])
go

-- Table Entity1

CREATE TABLE [Entity1]
(
)
go



