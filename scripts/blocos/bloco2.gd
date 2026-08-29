extends Area2D

var right = true
var left = true
var up = false
var down = false
var energia = false

func energizar(body: Node2D) -> void:
	if body.right == true or body.left == true:
		if energia == true:
			body.energia = true

func _process(_delta: float) -> void:
	if energia == true:
		$AnimationPlayer.play("energizado")
