extends Area2D

var energia = false
@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func _process(_delta: float) -> void:
	if energia == true: $AnimationPlayer.play("energizado")

func _on_mouse_entered() -> void: sprite.scale = Vector2(1.05, 1.05)

func _on_mouse_exited() -> void: sprite.scale = Vector2(1, 1)
