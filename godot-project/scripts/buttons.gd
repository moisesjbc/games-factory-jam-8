extends VBoxContainer

func _on_play_button_pressed():
	get_tree().change_scene("res://scenes/main.tscn")


func _on_game_over_button_pressed():
	get_tree().quit()
