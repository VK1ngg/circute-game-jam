extends Control

@onready var button = $Button

func mouse_entered() -> void: button.scale = Vector2 (0.55, 0.55)

func mouse_exited() -> void: button.scale = Vector2 (0.5, 0.5)
