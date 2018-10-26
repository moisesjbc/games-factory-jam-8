extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (int) var impulse = 500;
export (float) var movement_energy_cost = 0.5;

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _physics_process(delta):
	var offset = Vector2(0.0, 0.0)
	var direction = 0.0
	if Input.is_action_pressed("ui_left"):
		direction = -1.0
	elif Input.is_action_pressed("ui_right"):
		direction = 1.0
		
	if direction != 0.0 and $energy_bar.value >= movement_energy_cost:
		apply_impulse(offset, Vector2(direction * impulse * delta, 0.0))
		$energy_bar.value -= movement_energy_cost
