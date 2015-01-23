<?php
//Recurso utilizado para GET productos

$pg_conn = pg_connect(pg_connection_string_from_database_url());

$result = pg_query($pg_conn, 
	"SELECT p.id, p.titulo, proveedor, c.titulo categoria, fecha_agregado, imagen, stock 
	FROM lola.productos p JOIN lola.categorias c on p.categoria = c.id 
	ORDER BY fecha_agregado DESC;");

$jsonArray = array();

$row = array();

//arma la estructura a codificar como json
while($r = pg_fetch_assoc($result)){
	$row['id'] = $r['id'];
	$row['titulo'] = $r['titulo'];
	$row['proveedor'] = $r['proveedor'];
	$row['categoria'] = $r['categoria'];
	$row['fecha_agregado'] = $r['fecha_agregado'];
	$row['imagen'] = $r['imagen'];
	$row['stock'] = $r['stock'];
	$jsonArray[] = $row;
}

echo json_encode($jsonArray);

pg_close();

?>