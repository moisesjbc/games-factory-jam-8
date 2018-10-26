extends Panel

func show():
	get_tree().paused = true
	visible = true

func hide():
	visible = false
	get_tree().paused = false
	get_tree().change_scene("res://scenes/main.tscn")
