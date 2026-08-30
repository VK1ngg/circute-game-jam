extends Area2D

var energia = false

@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func desenergizar(body: Node2D) -> void: body.energia = false

func _process(_delta: float) -> void:
	if energia == true: $AnimationPlayer.play("energizado")
	else: $AnimationPlayer.play("RESET")
