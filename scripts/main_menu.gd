extends Control

@onready var BrancoStart = $Start/Branco
@onready var BrancoOptions = $Options/Branco
@onready var BrancoQuit = $Quit/Branco
@onready var BrancoYes = $Yes/Branco
@onready var BrancoNo = $No/Azul
@onready var Start = $Start/Start
@onready var Options = $Options/Options
@onready var Quit = $Quit/Quit
@onready var Quitting = "res://scenes/Quit.tscn"
@onready var Yes = $Yes/Yes
@onready var No = $No/No

func _ready() -> void:
<<<<<<< HEAD
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
=======
	pass
>>>>>>> b56a3eeb927d64fe012584ebf7f49c060b17d3a0

func Options_Pressed() -> void:
	pass # Replace with function body.

func Quit_Pressed() -> void:
	Start.disabled = true
	Options.disabled = true
	Quit.disabled = true
	Yes.disabled = false
	No.disabled = false
	$AnimationPlayer.play("Quitting")

func yes_pressed() -> void:
	get_tree().quit()


func no_pressed() -> void:
	Start.disabled = false
	Options.disabled = false
	Quit.disabled = false
	Yes.disabled = true
	No.disabled = true
	$AnimationPlayer.play("UnQuitting")

func _on_yes_mouse_entered() -> void:
	$Yes/Branco.visible = true

func _on_yes_mouse_exited() -> void:
	$Yes/Branco.visible = false

func _on_no_mouse_entered() -> void:
	$No/Branco.visible = true

func _on_no_mouse_exited() -> void:
	$No/Branco.visible = false
