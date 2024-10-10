<?php
session_start();
require 'db.php'; // Archivo de conexión a la base de datos

// Verificar si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['task_id'])) {
    $task_id = $_POST['task_id'];
    $user_id = $_SESSION['user_id'];

    $query = "DELETE FROM tasks WHERE id = ? AND id IN (SELECT task_id FROM user_tasks WHERE user_id = ?)";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('ii', $task_id, $user_id);

    if ($stmt->execute()) {
        // Eliminar la relación en la tabla intermedia
        $query = "DELETE FROM user_tasks WHERE task_id = ? AND user_id = ?";
        $stmt = $conn->prepare($query);
        $stmt->bind_param('ii', $task_id, $user_id);
        $stmt->execute();

        header("Location: dashboard.php?message=task_deleted");
        exit();
    } else {
        echo "Error al eliminar la tarea.";
    }
}
?>
