extends Node2D

@onready var pause_menu = $Pause
@onready var game_over = $"Game Over"
@onready var victory = $Victory
var paused = false
var tempo = 30
@onready var label = $Contagemm
@onready var timer = $Contagem

@export var reset_path = "res://scenes/Teste.tscn"
@export var goal_resistence = 0
@export var goal_capacitance = 0
@export var goal_current = 220

func _ready() -> void:
	timer.autostart = true
	timer.start()

func _process(_delta: float) -> void:
	timer.autostart = true
	label.text = str(tempo)
	if tempo == 0:
		Engine.time_scale = 0
		game_over.show()
	
	if goal_resistence == EletricSystem.sum_resistence and goal_capacitance == EletricSystem.sum_capacitance and goal_current == EletricSystem.current:
		victory.show()

func _on_pause_button_pressed() -> void:
	pauseMenu()

func pauseMenu():
	if paused == false:
		pause_menu.hide()
		Engine.time_scale = 1
	else:
		pause_menu.show()
		Engine.time_scale = 0
	paused = !paused

func reset():
	get_tree().change_scene_to_file("res://scenes/Teste.tscn")

func timeout() -> void:
	tempo -= 1

func _on_retry_button_pressed() -> void: reset()
