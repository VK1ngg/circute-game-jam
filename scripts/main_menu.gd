extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_start_mouse_entered() -> void:
	$Start/Branco.visible = true


func _on_start_mouse_exited() -> void:
	$Start/Branco.visible = false


func _on_options_mouse_entered() -> void:
	$Options/Branco.visible = true


func _on_options_mouse_exited() -> void:
	$Options/Branco.visible = false


func _on_quit_2_mouse_entered() -> void:
	$Quit2/Branco.visible = true


func _on_quit_2_mouse_exited() -> void:
	$Quit2/Branco.visible = false
