extends Control

@onready var resume = $ResumeBG
@onready var quit = $QuitBG
@onready var main = get_tree().current_scene

func _on_resume_mouse_entered() -> void: resume.scale = Vector2(1,1)

func _on_resume_mouse_exited() -> void: resume.scale = Vector2(0.9, 0.9)

func quit_mouse_entered() -> void: quit.scale = Vector2(1,1)

func quit_mouse_exited() -> void: quit.scale = Vector2(0.9,0.9)

func resume_pressed() -> void:
	main.pauseMenu()

func quit_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/level_selection.tscn")
