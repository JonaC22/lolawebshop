START TRANSACTION;
	CREATE SCHEMA lola;
	CREATE TABLE lola.categorias (
		id int CONSTRAINT PK_categoria PRIMARY KEY,
		titulo varchar(40) NOT NULL
	);
	CREATE TABLE lola.productos (
		id int CONSTRAINT PK_producto PRIMARY KEY,
		titulo varchar(40) NOT NULL,
		proveedor varchar(40) NOT NULL,
		categoria int NOT NULL,
		fecha_agregado date NOT NULL,
		imagen oid
	);
	ALTER TABLE lola.productos ADD CONSTRAINT FK_categoria
	FOREIGN KEY (categoria)
	REFERENCES lola.categorias(id);
COMMIT;
