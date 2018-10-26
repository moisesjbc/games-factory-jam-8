extends Position2D

export (PackedScene) var enemy_scene;

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func spawn_enemy():
	var enemy = enemy_scene.instance()
	enemy.position = Vector2(randi() % 1024, 0.0)
	add_child(enemy)
	pass # replace with function body
