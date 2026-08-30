extends Node

var lines: Dictionary = {}

func _process(delta: float) -> void:
	print(lines)

func add_serial_resistence(line: String, resistence: float):
	lines[line].resistence += resistence

func add_parallel_resistence(line: String, resistence: float):
	pass

func add_serial_capacitance(line: String, capacitance: float):
	pass

func add_parallel_capacitance(line: String, capacitance: float):
	lines[line].capacitance += capacitance
