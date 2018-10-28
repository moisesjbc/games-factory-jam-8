extends Panel

func _on_resume_button_pressed():
	visible = false
	get_tree().paused = false


func _on_return_to_main_menu_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://scenes/menus/main_menu.tscn")
