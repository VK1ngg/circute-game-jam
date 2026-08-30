extends Control

@onready var quit = $Quit
@onready var main = get_tree().current_scene

func quit_mouse_entered() -> void: quit.scale = Vector2(1,1)

func quit_mouse_exited() -> void:quit.scale = Vector2(0.9,0.9)

func quit_pressed() -> void:
	ScenesManager.Instance.change_2d_scene("")
	ScenesManager.Instance.change_control_scene("res://scenes/level_selection.tscn")
