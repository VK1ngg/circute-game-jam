extends Control

@onready var BrancoStart = $Start/Branco
@onready var BrancoOptions = $Options/Branco
@onready var BrancoQuit = $Quit/Branco

func _ready() -> void:
	$AnimationPlayer.play("Entering")

func _on_button_mouse_entered() -> void:
	BrancoStart.visible = true

func _on_button_mouse_exited() -> void:
	BrancoStart.visible = false

func _on_options_text_mouse_entered() -> void:
	BrancoOptions.visible = true

func _on_options_text_mouse_exited() -> void:
	BrancoOptions.visible = false

func _on_quit_text_mouse_entered() -> void:
	BrancoQuit.visible = true

func _on_quit_text_mouse_exited() -> void:
	BrancoQuit.visible = false

func Start_pressed() -> void:
	pass # Replace with function body.

func Options_Pressed() -> void:
	pass # Replace with function body.

func Quit_Pressed() -> void:
	pass # Replace with function body.
