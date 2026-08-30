@abstract
class_name Block
extends Area2D

var energy: bool = false
var line: String = ''

@abstract func activate(line_string: String) -> void

func energize(body: Node2D) -> void:
	if body is Block and energy:
		body.activate(line)
