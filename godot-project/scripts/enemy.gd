extends Area2D

export (float) var min_vertical_speed = 1.0
export (float) var max_vertical_speed = 5.0
var vertical_speed = 0.0

export (float) var min_horizontal_speed = -5.0
export (float) var max_horizontal_speed = 5.0
var horizontal_speed = 0.0

func _ready():
	vertical_speed = random_speed(min_vertical_speed, max_vertical_speed)
	horizontal_speed = random_speed(min_horizontal_speed, max_horizontal_speed)

func _process(delta):
	# Called every frame. Delta is time since last frame.
	# Update game logic here.
	position += Vector2(horizontal_speed * delta, +1.0 * vertical_speed * delta)

func _on_body_entered(body):
	if body.name == 'player':
		body.damage()
	queue_free()

func random_speed(min_speed, max_speed):
	return randf() * (max_speed - min_speed) + min_speed