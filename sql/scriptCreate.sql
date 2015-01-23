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
		fecha_agregado date NOT NULL DEFAULT current_date,
		imagen varchar(40),
		stock boolean DEFAULT true NOT NULL
	);
	ALTER TABLE lola.productos ADD CONSTRAINT FK_categoria
	FOREIGN KEY (categoria)
	REFERENCES lola.categorias(id);

	CREATE SEQUENCE producto_id_seq;
	ALTER TABLE lola.productos ALTER id SET DEFAULT NEXTVAL('producto_id_seq'); 

	CREATE SEQUENCE categoria_id_seq;
	ALTER TABLE lola.categorias ALTER id SET DEFAULT NEXTVAL('categoria_id_seq');

	CREATE UNIQUE INDEX categoria_titulo ON lola.categorias (titulo);

	CREATE OR REPLACE FUNCTION lola.tests() RETURNS text AS $$
		DECLARE
			resultado text := ' ';
		BEGIN
		
		INSERT INTO lola.categorias (id, titulo) VALUES (1,'Collares');

		IF EXISTS (SELECT * FROM lola.categorias WHERE id = 1 AND titulo = 'Collares')
		THEN resultado := resultado || 'TEST Categorias OK ';
		ELSE resultado := resultado || 'TEST Categorias FAILED ';
		END IF;

		--Productos
		INSERT INTO lola.productos (id, titulo, proveedor, categoria, fecha_agregado, imagen)
		VALUES (1, 'Collar X-T', 'X-T', 1, current_date, 'sample');

		IF EXISTS(
				SELECT * FROM lola.productos
				WHERE id = 1 
				AND titulo = 'Collar X-T'
				AND proveedor = 'X-T'
				AND categoria = 1
				AND fecha_agregado = current_date
				AND imagen = 'sample'
		)
		THEN resultado := resultado || 'TEST Productos OK ';
		ELSE resultado := resultado || 'TEST Productos FAILED ';
		END IF;

		DELETE FROM lola.productos;
		DELETE FROM lola.categorias;
		
		RETURN resultado;
		END;
	$$ LANGUAGE plpgsql;
COMMIT;
