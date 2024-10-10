<?php
session_start();
require 'db.php'; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}

if (isset($_GET['id'])) {
    $task_id = $_GET['id'];
} else {
    header("Location: dashboard.php");
    exit();
}

$query = "SELECT * FROM tasks WHERE id = ? AND user_id = ?";
$stmt = $conn->prepare($query);
$stmt->bind_param('ii', $task_id, $_SESSION['user_id']);
$stmt->execute();
$result = $stmt->get_result();
$tarea = $result->fetch_assoc();

if (!$tarea) {
    header("Location: dashboard.php");
    exit();
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $title = $_POST['title'];
    $description = $_POST['description'];
    $priority = $_POST['priority'];
    $status = $_POST['status'];

    $query = "UPDATE tasks SET title = ?, description = ?, priority = ?, status = ? WHERE id = ? AND user_id = ?";
    $stmt = $conn->prepare($query);
    $stmt->bind_param('ssssii', $title, $description, $priority, $status, $task_id, $_SESSION['user_id']);

    if ($stmt->execute()) {
        header("Location: dashboard.php");
        exit();
    } else {
        $error = "Error al actualizar la tarea. Inténtalo de nuevo.";
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Editar Tarea</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Editar Tarea</h2>

        <?php if (isset($error)): ?>
            <div class="alert alert-danger"><?= $error ?></div>
        <?php endif; ?>

        <form method="POST" action="edit_task.php?id=<?= $task_id ?>">
            <div class="mb-3">
                <label for="title" class="form-label">Título</label>
                <input type="text" class="form-control" id="title" name="title" value="<?= htmlspecialchars($tarea['title']); ?>" required>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Descripción</label>
                <textarea class="form-control" id="description" name="description" rows="3" required><?= htmlspecialchars($tarea['description']); ?></textarea>
            </div>
            <div class="mb-3">
                <label for="priority" class="form-label">Prioridad</label>
                <select class="form-select" id="priority" name="priority" required>
                    <option value="baja" <?= $tarea['priority'] == 'baja' ? 'selected' : ''; ?>>Baja</option>
                    <option value="media" <?= $tarea['priority'] == 'media' ? 'selected' : ''; ?>>Media</option>
                    <option value="alta" <?= $tarea['priority'] == 'alta' ? 'selected' : ''; ?>>Alta</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="status" class="form-label">Estado</label>
                <select class="form-select" id="status" name="status" required>
                    <option value="pendiente" <?= $tarea['status'] == 'pendiente' ? 'selected' : ''; ?>>Pendiente</option>
                    <option value="completada" <?= $tarea['status'] == 'completada' ? 'selected' : ''; ?>>Completada</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary">Actualizar Tarea</button>
             <a href="task_detail.php?id=<?= $task_id ?>" class="btn btn-info">Ver Detalles</a>
            <a href="dashboard.php" class="btn btn-danger">Cancelar</a>
        </form>
    </div>
</body>
</html>
