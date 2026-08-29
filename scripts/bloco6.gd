extends Area2D

var right = false
var left = true
var up = false
var down = true
var energia = false

func energizar(body: Node2D) -> void:
	print("TESTE")
	if body.right == true or body.up == true:
		if energia == true:
			body.energia = true

func _process(_delta: float) -> void:
	if energia == true:
		$AnimationPlayer.play("energizado")
		


func _on_area_2d_area_entered(area: Area2D) -> void:
	pass # Replace with function body.
