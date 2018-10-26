extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (int) var impulse = 500;

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.

func _physics_process(delta):
	var offset = Vector2(0.0, 0.0)
	if Input.is_action_pressed("ui_left"):
		apply_impulse(offset, Vector2(-1.0 * impulse * delta, 0.0))
	if Input.is_action_pressed("ui_right"):
		apply_impulse(offset, Vector2(1.0 * impulse * delta, 0.0))
