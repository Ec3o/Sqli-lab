<?php

$config = array(
    'DB_HOST' => 'localhost',
    'DB_USERNAME' => 'root',
    'DB_PASSWORD' => 'password',
    'DB_DATABASE' => 'vidar',
    'DB_SOCKET' => '/run/mysqld/mysqld.sock'
);

$conn = mysqli_connect($config['DB_HOST'], $config['DB_USERNAME'], $config['DB_PASSWORD'], $config['DB_DATABASE'], null, $config['DB_SOCKET']);

if (mysqli_connect_errno($conn)) {
    echo "Failed connecting. " . mysqli_connect_error() . "<br/>";
}
?>