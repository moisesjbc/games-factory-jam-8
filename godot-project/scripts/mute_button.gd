extends Button

onready var muted = AudioServer.is_bus_mute(AudioServer.get_bus_index("Master"))

func _ready():
	update_label()


func _on_mute_button_pressed():
	muted = not muted
	update_label()
	AudioServer.set_bus_mute(AudioServer.get_bus_index("Master"), muted)


func update_label():
	if muted:
		text = "UNMUTE GAME"
	else:
		text = "MUTE GAME"