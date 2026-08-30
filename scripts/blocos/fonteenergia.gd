extends Area2D

var energy = true
var line: String = 'A'

func energizar(body: Node2D) -> void:
	body.energy = true
	body.line = self.line
	EletricSystem.lines[line] = Composition.new(0, 0)
