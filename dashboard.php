<?php
session_start();
require 'db.php'; 

if (!isset($_SESSION['user_id'])) {
    header("Location: login.php");
    exit();
}
$user_id = $_SESSION['user_id'];
$query = "SELECT t.* FROM tasks t JOIN user_tasks ut ON t.id = ut.task_id WHERE ut.user_id = ?"; // Uso del join en el SQL
$stmt = $conn->prepare($query);
$stmt->bind_param('i', $user_id);
$stmt->execute();
$result = $stmt->get_result();
$tareas = $result->fetch_all(MYSQLI_ASSOC);
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
<a href="logout.php" class="btn btn-danger">Cerrar Sesión</a>

        <h2 class="text-center">Bienvenido, <?= $_SESSION['user_name']; ?></h2>

        <div class="row mt-4">
            <div class="col-12 mb-3">
                <a href="add_task.php" class="btn btn-success">Agregar Tarea</a>
            </div>
        </div>

        <div class="row">
            <?php if (count($tareas) > 0): ?>
                <?php foreach ($tareas as $tarea): ?>
                    <div class="col-sm-12 col-md-6 col-lg-4 col-xl-3 mb-4">
                        <div class="card">
                            <div class="card-body">
                                <h5 class="card-title"><?= htmlspecialchars($tarea['title']); ?></h5>
                                <p class="card-text"><?= htmlspecialchars($tarea['description']); ?></p>
                                <p><strong>Prioridad:</strong> <?= htmlspecialchars($tarea['priority']); ?></p>
                                <p><strong>Estado:</strong> <?= htmlspecialchars($tarea['status']); ?></p>
                                
                                <?php if ($tarea['status'] === 'pendiente'): ?>
                                    <button class="btn btn-primary marcar-completada mb-2" data-id="<?= $tarea['id']; ?>">Marcar como Completada</button>
                                <?php else: ?>
                                    <button class="btn btn-success mb-2" disabled>Completada</button>
                                <?php endif; ?>

                                <a href="edit_task.php?id=<?= $tarea['id']; ?>" class="btn btn-warning">Editar</a>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>
            <?php else: ?>
                <p class="text-center">No tienes tareas pendientes.</p>
            <?php endif; ?>
        </div>
    </div>

    <script>
        document.querySelectorAll('.marcar-completada').forEach(button => {
            button.addEventListener('click', function() {
                const taskId = this.getAttribute('data-id');

                fetch('mark_completed.php', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify({ id: taskId })
                })
                .then(response => response.json())
                .then(data => {
                    if (data.success) {
                        this.innerHTML = 'Completada';
                        this.classList.remove('btn-primary');
                        this.classList.add('btn-success');
                        this.setAttribute('disabled', 'true');
                    } else {
                        console.error('Error al completar la tarea');
                    }
                })
                .catch(error => console.error('Error en la solicitud:', error));
            });
        });
    </script>
</body>
</html>
