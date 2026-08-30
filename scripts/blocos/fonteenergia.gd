extends Area2D

var energia = true
const ENERGIA = true

func energizar(body: Node2D) -> void:
	body.energia = true
	body.energizar(body)

func desenergizar(body: Node2D):
	body.energia -= 1
