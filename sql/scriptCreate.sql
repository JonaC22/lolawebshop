START TRANSACTION;
	CREATE SCHEMA lola;
	CREATE TABLE lola.categorias (
		id int CONSTRAINT PK_categoria PRIMARY KEY,
		titulo varchar(40)
	);
	CREATE TABLE lola.productos (
		id int CONSTRAINT PK_producto PRIMARY KEY,
		titulo varchar(40),
		categoria int,
		fecha_agregado date,
		imagen bytea,
		cantidad int,
		precio numeric
	);
	ALTER TABLE lola.productos ADD CONSTRAINT FK_categoria
	FOREIGN KEY (categoria)
	REFERENCES lola.categorias(id);
COMMIT;
