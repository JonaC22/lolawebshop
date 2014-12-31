<?php

function pg_connection_string_from_database_url() {
  extract(parse_url(getenv("DATABASE_URL")));
  return "user=$user password=$pass host=$host dbname=" . substr($path, 1); # <- you may want to add sslmode=require there too
}

$pg_conn = pg_connect(pg_connection_string_from_database_url());

$result = pg_query($pg_conn, "SELECT * FROM lola.categorias");

$rows = array();

while($r = pg_fetch_assoc($result)){
	$rows[$r['titulo']] = $r['id'];
}

echo json_encode($rows);
pg_close();

?>