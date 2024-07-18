<?php
error_reporting(E_ALL);
ini_set('display_errors',1);

###echo "Hello, World";
$servername = "localhost";
$username = "ruby";
$password = "A";

###var_dump($servername);
###var_dump($username);
###var_dump($password);
echo "<br>";
###echo $servername;
echo "<br>";
###echo $username;
echo "<br>";
###echo $password;

$conn = new mysqli($servername, $username, $password);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
echo "<br>";
echo "Connected successfully";
?>

