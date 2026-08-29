extends StaticBody2D

var right = true
var left = false
var up = false
var down = true
var energia = false

func energizar(body: Node2D) -> void:
	if body.has_signal("energizar") and energia == true:
		body.energia = true
		
