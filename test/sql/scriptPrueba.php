<?php

$pg_conn = pg_connect(pg_connection_string_from_database_url());

$sql = file_get_contents('../sql/scriptDrop.sql');

pg_query($pg_conn, $sql);

$sql = file_get_contents('../sql/scriptCreate.sql');

pg_query($pg_conn, $sql);

$sql = 'SELECT lola.tests()';

$resultado = pg_query($pg_conn, $sql);

while ($row = pg_fetch_row($resultado)) {
    print_r($row[0]);
}
