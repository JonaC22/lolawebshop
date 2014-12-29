--Script de prueba de los schemas y tablas creadas

--Categorias
START TRANSACTION;

CREATE FUNCTION lola.tests() RETURNS varchar AS $$
	DECLARE
		resultado varchar;
	BEGIN

	INSERT INTO lola.categorias (id, titulo) VALUES (1,'Collares');

	IF EXISTS (SELECT * FROM lola.categorias WHERE id = 1 AND titulo = 'Collares')
	THEN resultado := resultado || ' TEST Categorias OK ';
	ELSE resultado := resultado || ' TEST Categorias FAILED\n';
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
	ELSE resultado := resultado || 'TEST Productos FAILED\n';
	END IF;

	DELETE FROM lola.productos;
	DELETE FROM lola.caterogias;

	RETURN resultado;
	END;
	$$ LANGUAGE plpgsql;

SELECT lola.tests() AS Respuesta;
