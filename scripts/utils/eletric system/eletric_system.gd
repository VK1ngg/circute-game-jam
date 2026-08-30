extends Node

const VOLTAGE = 220
const RESISTENCE = 100
const CAPACITANCE = 10

var resistences: int = 0
var capacitances: float = 0

var sum_resistence: float = 0
var sum_capacitance: float = 0
var current: float = 0

func _process(_delta: float) -> void:
	sum_resistence = get_sum_resistence()
	sum_capacitance = get_sum_capacitance()
	current = get_current()

func get_sum_resistence() -> float:
	return resistences * RESISTENCE

func get_sum_capacitance() -> float:
	return capacitances / CAPACITANCE

func get_current() -> float:
	var resistence = get_sum_resistence()
	if resistence == 0:
		resistence = 1
	
	return VOLTAGE / resistence
