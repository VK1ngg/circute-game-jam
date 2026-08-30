extends Area2D

var energia = 99

func energizar(body: Node2D) -> void:
	if energia >= 0: body.energia +=1

func desenergizar(body: Node2D):
	body.energia -= 1
