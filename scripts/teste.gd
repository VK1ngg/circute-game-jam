extends Node2D

@onready var pause_menu = $Pause
var paused = true

func _on_pause_button_pressed() -> void:
	pauseMenu()

func pauseMenu():
	if paused == false:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused
