extends Area2D

var energia = false
var is_component = true
@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func desenergizar(body: Node2D) -> void: body.energia = false

func sum_value() -> void:
	EletricSystem.resistences += 1

func _process(_delta: float) -> void:
	if energia == true: $AnimationPlayer.play("energizado")
	else: $AnimationPlayer.play("RESET")
