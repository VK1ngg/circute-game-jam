extends CompositionBlock

var energia = false

@onready var sprite = $_

func energizar(body: Node2D) -> void:
	if energia == true: body.energia = true

func desenergizar(body: Node2D) -> void: body.energia = false

func activate(line_string: String) -> void:
	line = line_string
	energy = true

func sum_value() -> void:
	pass

func _process(_delta: float) -> void:
	if energia == true: $AnimationPlayer.play("energizado")
