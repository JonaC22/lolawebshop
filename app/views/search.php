<?php

$pg_conn = pg_connect(pg_connection_string_from_database_url());

$result = pg_query($pg_conn, "SELECT * FROM lola.categorias");

$rows = array();

while($r = pg_fetch_assoc($result)){
	$rows[$r['titulo']] = $r['id'];
}

echo json_encode($rows);

pg_close();

?>