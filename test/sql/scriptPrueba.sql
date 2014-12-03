--Script de prueba de los schemas y tablas creadas
--TODO hacer un assert de que si devolvio filas o no
INSERT INTO lola.categorias (id, titulo) VALUES (1,'Collares');
SELECT * FROM lola.categorias WHERE id = 1;
INSERT INTO lola.productos (id, titulo, proveedor, categoria, fecha_agregado, cantidad, precio)
VALUES (1, 'Collar X-T', 'X-T', 1, current_date, 10, 130.50);
SELECT * FROM lola.productos;