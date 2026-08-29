extends Node

@export_group("Scenes")
@export var packed_2d: PackedScene
@export var packed_control: PackedScene

@onready var scene_2d_node: Node2D = get_node("Scene2D")
@onready var scene_control_node: Control = get_node("ScenceControl")

var current_2d_scene: Node2D
var current_control_scene: Control

func _ready() -> void:
	if not packed_2d == null:
		current_2d_scene = packed_2d.instantiate()
		scene_2d_node.add_child(current_2d_scene)
	
	if not packed_control == null:
		current_control_scene = packed_control.instantiate()
		print(scene_control_node.name)
		scene_control_node.add_child(current_control_scene)

func remove_scene(node: Node):
	node.set_process(false)
	node.set_physics_process(false)
	node.set_process_input(false)
	node.visible = false

func change_2d_scene(new_scene: String, mode: String = "delete"):
	match mode:
		"delete":
			# Delete da memória
			current_2d_scene.queue_free()
		"remove":
			# Mantém na memória, mas não roda
			remove_scene(current_2d_scene)
		"hide":
			# Mantém na memória e roda
			current_2d_scene.visible = false
		_:
			printerr("${mode} not found!")
	
	var new = load(new_scene).instantiate()
	current_2d_scene.add_child(new)

func change_control_scene(new_scene: String, mode: String = "delete"):
	match mode:
		"delete":
			# Delete da memória
			current_control_scene.queue_free()
		"remove":
			# Mantém na memória, mas não roda
			remove_scene(current_control_scene)
		"hide":
			# Mantém na memória e roda
			current_control_scene.visible = false
		_:
			printerr("${mode} not found!")
	
	var new = load(new_scene).instantiate()
	current_control_scene.add_child(new)
