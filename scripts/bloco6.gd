extends Area2D

var right = false
var left = true
var up = false
var down = true
var energia = false

func energizar(body: Node2D) -> void:
	if body.right == true or body.up == true:
		if energia == true:
			body.energia = true

func _process(_delta: float) -> void:
	if energia == true:
		$AnimationPlayer.play("energizado")
		
