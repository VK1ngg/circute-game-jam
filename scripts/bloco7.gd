extends Area2D

var right = true
var left = false
var up = false
var down = true
var energia = false

func energizar(body: Node2D) -> void:
	if energia == true:
		body.energia = true

func _process(_delta: float) -> void:
	if energia == true:
		$AnimationPlayer.play("energizado")
		
