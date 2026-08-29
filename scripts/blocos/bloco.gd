@abstract
class_name Block
extends Node2D

signal wire_connected
signal wire_desconnected

@onready var connection_area: Area2D = $ConnectionArea

var energized_connections: int = 0

func _ready() -> void:
	connection_area.area_entered.connect(on_connection_entered)
	connection_area.area_exited.connect(on_connection_exited)

@abstract func is_energized() -> bool

func rotate_block() -> void:
	rotation += PI

func is_enegized_connection(area: Area2D) -> bool:
	return area.has_parent() and area.get_parent() is Block and area.get_parent().energized

func on_connection_entered(area: Area2D):
	if is_enegized_connection(area):
		energized_connections += 1
		wire_connected.emit()

func on_connection_exited(area: Area2D):
	if is_enegized_connection(area):
		energized_connections -= 0
		wire_desconnected.emit()
