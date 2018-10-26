extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var seconds = 0
var minutes = 0

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass
	


#func _process(delta):
#	# Called every frame. Delta is time since last frame.
#	# Update game logic here.
#	pass


func _on_timer_timeout():
	seconds += 1
	if seconds == 60:
		minutes += 1
		seconds = 0
	
	text = "%02d:%02d" % [minutes, seconds]
