extends Area2D

var energia = 0
@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia >= 1: body.energia += 1

func _process(_delta: float) -> void:
	if energia >= 0: $AnimationPlayer.play("energizado")
	else: $AnimationPlayer.play("desenergizazdo")

func _on_mouse_entered() -> void: sprite.scale = Vector2(1.05, 1.05)

func _on_mouse_exited() -> void: sprite.scale = Vector2(1, 1)

func input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		if rotation_degrees == 0: rotation_degrees = 90
		elif rotation_degrees  == 90: rotation_degrees  = 180
		elif rotation_degrees  == 180: rotation_degrees  = 270
		else: rotation_degrees = 0
