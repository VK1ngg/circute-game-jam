extends StaticBody2D

var right = false
var left = false
var up = true
var down = true
var energia = false

func energizar(body: Node2D) -> void:
	if body.has_signal("energizar") and energia == true:
		body.energia = true
