extends Area2D

var right = false
var left = true
var up = false
var down = false
var energia = true

func energizar(body: Node2D) -> void:
	print("teste")
	body.energia = true
