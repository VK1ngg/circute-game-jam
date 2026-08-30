extends Area2D

var energia = true
var ENERGIA = true

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func desenergizar(body: Node2D):
	body.energia -= 1
