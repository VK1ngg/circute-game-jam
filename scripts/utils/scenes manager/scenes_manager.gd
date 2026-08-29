extends Node

@export_group("Scenes")
@export var packed_2d: PackedScene
@export var packed_control: PackedScene

@onready var scenes_memory: Dictionary = {}
@onready var scene_2d_node: Node2D = get_node("Scene2D")
@onready var scene_control_node: Control = get_node("ScenceControl")

var current_2d_scene: Node2D
var current_control_scene: Control

func _ready() -> void:
	if not packed_2d == null:
		current_2d_scene = packed_2d.instantiate()
		scene_2d_node.add_child(current_2d_scene)
		scenes_memory[current_2d_scene.name] = current_2d_scene
	
	if not packed_control == null:
		current_control_scene = packed_control.instantiate()
		print(scene_control_node.name)
		scene_control_node.add_child(current_control_scene)
		scenes_memory[current_control_scene.name] = current_control_scene

## Delete scene from memory
func delete_scene(scene: Node):
	scene.queue_free()
	scenes_memory.erase(scene.Name)

## Remove scene and stops running, but keeps in memory
func remove_scene(scene: Node):
	scene.set_process(false)
	scene.set_physics_process(false)
	scene.set_process_input(false)
	scene.visible = false

## Hide scene and keeps running
func hide_scene(scene: Node):
	scene.visible = false

func change_2d_scene(new_scene: String, mode: String = "delete"):
	match mode:
		"delete":
			# Delete da memória
			delete_scene(current_2d_scene)
		"remove":
			# Mantém na memória, mas não roda
			remove_scene(current_2d_scene)
		"hide":
			# Mantém na memória e roda
			hide_scene(current_2d_scene)
		_:
			printerr("${mode} not found!")
	
	var new = load(new_scene).instantiate()
	
	if scenes_memory.has(new.name):
		scenes_memory[new.name].set_process(true)
		scenes_memory[new.name].set_physics_process(true)
		scenes_memory[new.name].set_process_input(true)
		scenes_memory[new.name].visible = true
		new.queue_free()
	else:
		current_2d_scene.add_child(new)

func change_control_scene(new_scene: String, mode: String = "delete"):
	match mode:
		"delete":
			# Delete da memória
			delete_scene(current_control_scene)
		"remove":
			# Mantém na memória, mas não roda
			remove_scene(current_control_scene)
		"hide":
			# Mantém na memória e roda
			hide_scene(current_control_scene)
		_:
			printerr("${mode} not found!")
	
	var new = load(new_scene).instantiate()
	
	if scenes_memory.has(new.name):
		scenes_memory[new.name].set_process(true)
		scenes_memory[new.name].set_physics_process(true)
		scenes_memory[new.name].set_process_input(true)
		scenes_memory[new.name].visible = true
		new.queue_free()
	else:
		current_control_scene.add_child(new)
