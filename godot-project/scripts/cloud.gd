extends Sprite

export (float) var min_vertical_speed = 1.0
export (float) var max_vertical_speed = 5.0
var vertical_speed = 0.0

func _ready():
	vertical_speed = random_speed(min_vertical_speed, max_vertical_speed)

func _process(delta):
	position += Vector2(0.0, +1.0 * vertical_speed * delta)
	
func random_speed(min_speed, max_speed):
	return randf() * (max_speed - min_speed) + min_speed
