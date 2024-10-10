<?php
session_start();
require 'db.php'; // Archivo de conexión a la base de datos

// Verificar si el usuario ha iniciado sesión
if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

// Obtener el ID de la tarea desde la URL
if (isset($_GET['id'])) {
    $task_id = $_GET['id'];
} else {
    // Si no hay ID, redirigir al dashboard
    header("Location: dashboard.php");
    exit();
}

// Consultar los detalles de la tarea
$query = "SELECT * FROM tasks WHERE id = ? AND user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param('ii', $task_id, $_SESSION['user_id']);
$stmt->execute();
$result = $stmt->get_result();
$tarea = $result->fetch_assoc();

// Verificar si la tarea existe
if (!$tarea) {
    // Si no existe la tarea, redirigir al dashboard
    header("Location: dashboard.php");
    exit();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Detalle de Tarea</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Detalle de Tarea</h2>
        <div class="card">
            <div class="card-body">
                <h5 class="card-title"><?= htmlspecialchars($tarea['title']); ?></h5>
                <p class="card-text"><strong>Descripción:</strong> <?= htmlspecialchars($tarea['description']); ?></p>
                <p><strong>Prioridad:</strong> <?= htmlspecialchars($tarea['priority']); ?></p>
                <p><strong>Estado:</strong> <?= htmlspecialchars($tarea['status']); ?></p>
            </div>
        </div>

        <!-- Botones para volver al dashboard o editar la tarea -->
        <div class="mt-4">
            <a href="dashboard.php" class="btn btn-primary">Volver al Dashboard</a>
            <a href="edit_task.php?id=<?= $tarea['id']; ?>" class="btn btn-warning">Editar Tarea</a>
        </div>
    </div>
</body>
</html>
