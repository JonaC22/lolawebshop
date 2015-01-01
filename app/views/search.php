<?php
//Recurso utilizado para GET categorias

$pg_conn = pg_connect(pg_connection_string_from_database_url());

$result = pg_query($pg_conn, "SELECT * FROM lola.categorias");

$jsonArray = array();

$row = array();

//arma la estructura a codificar como json
while($r = pg_fetch_assoc($result)){
	$row['id'] = $r['id'];
	$row['titulo'] = $r['titulo'];
	$jsonArray[] = $row;
}

echo json_encode($jsonArray);

pg_close();

?>