<?php
session_start();
require 'db.php';

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // Obtener el cuerpo de la solicitud en formato JSON
    $data = json_decode(file_get_contents('php://input'), true);
    $task_id = $data['id'];

    // Actualizar el estado de la tarea
    $query = "UPDATE tasks SET status = 'completada' WHERE id = ? AND user_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('ii', $task_id, $_SESSION['user_id']);
    $stmt->execute();

    // Verificar si la actualización fue exitosa
    if ($stmt->affected_rows > 0) {
        echo json_encode(['success' => true]);
    } else {
        echo json_encode(['success' => false]);
    }
}
?>
