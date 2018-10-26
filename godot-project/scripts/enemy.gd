extends Area2D

export (float) var min_vertical_speed = 1.0
export (float) var max_vertical_speed = 5.0
var vertical_speed = 0.0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	vertical_speed = randf() * (max_vertical_speed - min_vertical_speed) + min_vertical_speed

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	position += Vector2(0.0, +1.0 * vertical_speed * delta)
