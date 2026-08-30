extends Area2D

var energia = 0
@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia >= 1: body.energia += 1

func _process(_delta: float) -> void:
	if energia >= 1: $AnimationPlayer.play("energizado")
