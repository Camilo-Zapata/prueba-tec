<?php
$servername = "localhost";  // Cambia esto si el servidor no está en local
$username = "root";         // El nombre de usuario de MySQL (ajústalo según tu configuración)
$password = "";             // La contraseña de MySQL (déjala vacía si no tienes una)
$dbname = "prueba"; // Nombre de la base de datos que creaste


$conn = new mysqli($servername, $username, $password, $dbname);


if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>
