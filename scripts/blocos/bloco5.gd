extends Area2D

var right = true
var left = false
var up = true
var down = false
var energia = false

func energizar(body: Node2D) -> void:
	if body.left == true or body.down == true:
		if energia == true:
			body.energia = true
func _process(_delta: float) -> void:
	if energia == true:
		$AnimationPlayer.play("energizado")
		
