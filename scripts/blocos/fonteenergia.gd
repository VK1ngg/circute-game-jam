extends Area2D

var energia = true
var line: String = 'A'

func energizar(body: Node2D) -> void:
	body.energia = true
	body.line = self.line
	EletricSystem.lines[line] = Composition.new(0, 0)
