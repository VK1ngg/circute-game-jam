extends StaticBody2D

var right = false
var left = false
var up = false
var down = false
var energia = true

func energizar(body: Node2D) -> void:
	body.energia = true
