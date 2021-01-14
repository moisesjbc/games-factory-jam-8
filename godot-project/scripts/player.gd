extends RigidBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (int) var impulse = 500
export (float) var movement_energy_cost = 1
export (float) var enemy_recharge = 30.0
export (int) var max_hp = 3

onready var hp = max_hp
onready var y = get_position().y

signal hit
signal died



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
	
	if direction != 0.0 and $energy_bar.energy >= movement_energy_cost:
		apply_impulse(offset, Vector2(direction * impulse * delta, 0.0))
		$energy_bar.energy -= movement_energy_cost


func damage():
	# Play hit sound
	if not $hit_sound.playing:
		$hit_sound.stop()
	$hit_sound.play(1)
	
	hp -= 1
	emit_signal("hit")
	if hp == 0:
		emit_signal("died")

func recharge_energy():
	# Play hit sound
	if not $recharge_sound.playing:
		$recharge_sound.stop()
	$recharge_sound.play()
	
	$energy_bar.energy += enemy_recharge
