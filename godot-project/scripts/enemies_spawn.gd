extends Position2D

export (PackedScene) var enemy_scene;
export (float) var time_step = 0.1


func increase_difficulty():
	if $enemies_spawn_timer.wait_time > time_step:
		$enemies_spawn_timer.wait_time -= time_step


func spawn_enemy():
	var enemy = enemy_scene.instance()
	enemy.position = Vector2(randi() % 1024, 0.0)
	add_child(enemy)
