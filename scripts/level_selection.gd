extends Control

func _ready() -> void:
	pass

func _on_test_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Teste.tscn")

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level1.tscn")

func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level2.tscn")

func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level3.tscn")

func _on_button_5_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/level4.tscn")
	
