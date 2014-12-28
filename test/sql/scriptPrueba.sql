--Script de prueba de los schemas y tablas creadas

--Categorias
CREATE FUNCTION lola.tests() RETURNS void AS $$
BEGIN

INSERT INTO lola.categorias (id, titulo) VALUES (1,'Collares');

IF EXISTS (SELECT * FROM lola.categorias WHERE id = 1 AND titulo = 'Collares')
THEN RAISE NOTICE 'TEST Categorias OK';
ELSE RAISE NOTICE 'TEST Categorias FAILED';
END IF;

--Productos
INSERT INTO lola.productos (id, titulo, proveedor, categoria, fecha_agregado, imagen)
VALUES (1, 'Collar X-T', 'X-T', 1, current_date, lo_import('collarRubi.jpg'));

IF EXISTS(
		SELECT * FROM lola.productos
		WHERE id = 1 
		AND titulo = 'Collar X-T'
		AND proveedor = 'X-T'
		AND categoria = 1
		AND fecha_agregado = current_date
)
THEN RAISE NOTICE  'TEST Productos OK';
ELSE RAISE NOTICE  'TEST Productos FAILED';
END IF;

END;
$$ LANGUAGE plpgsql;

START TRANSACTION;

SELECT lola.tests() AS Respuesta;

ROLLBACK;

DROP FUNCTION lola.tests();