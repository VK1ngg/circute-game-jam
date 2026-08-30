extends Area2D

var energia = false
@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func desenergizar(body: Node2D) -> void: body.energia = false

func _process(_delta: float) -> void:
	if energia == true: $AnimationPlayer.play("energizado")
	else: $AnimationPlayer.play("RESET")

func mouse_entered() -> void: sprite.scale = Vector2(1.05, 1.05)

func mouse_exited() -> void: sprite.scale = Vector2(1, 1)

func input_event(_viewport: Node, _event: InputEvent, _shape_idx: int) -> void:
	if Input.is_action_just_pressed("click"):
		if rotation_degrees == 0: rotation_degrees = 90
		elif rotation_degrees  == 90: rotation_degrees  = 180
		elif rotation_degrees  == 180: rotation_degrees  = 270
		else: rotation_degrees = 0
