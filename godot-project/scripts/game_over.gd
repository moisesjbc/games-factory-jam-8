extends Panel

func show():
	$game_over_sound.play()
	get_tree().paused = true
	visible = true

func hide():
	visible = false
	get_tree().paused = false
	get_tree().change_scene("res://scenes/main.tscn")


func _on_return_to_main_menu_button_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://scenes/menus/main_menu.tscn")

