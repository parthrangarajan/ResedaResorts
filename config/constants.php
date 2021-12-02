<?php
// Starting session
session_start();
// save data in database
// create constant
define('SITEURL', 'http://localhost/ResedaResorts/');
define('LOCALHOST', 'localhost:4306');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'reseda_users');

$conn = mysqli_connect(LOCALHOST,DB_USERNAME,DB_PASSWORD) or die(mysqli_error());
$db_select=  mysqli_select_db($conn, DB_NAME) or die(mysqli_error());
// Check connection
// if ($mysqli -> connect_errno) {
//   echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
//   exit();
// }
 ?>
