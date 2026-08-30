extends Control

func _ready() -> void:
	pass

func _on_test_pressed() -> void:
	ScenesManager.Instance.change_2d_scene("res://scenes/Teste.tscn")
	ScenesManager.Instance.change_control_scene("")
