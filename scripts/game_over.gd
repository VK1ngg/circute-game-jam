extends Control

@onready var retry = $Retry
@onready var quit = $Quit
@onready var main = get_tree().current_scene

func retry_mouse_entered() -> void: retry.scale = Vector2(1,1)

func retry_mouse_exited() -> void: retry.scale = Vector2(0.9,0.9)

func quit_mouse_entered() -> void: quit.scale = Vector2(1,1)

func quit_mouse_exited() -> void:quit.scale = Vector2(0.9,0.9)

func retry_pressed() -> void:
	main.reset()

func quit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")
