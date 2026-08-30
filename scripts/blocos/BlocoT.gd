extends SplitBlock

@onready var sprite = $_

func energizar(body: Node2D) -> void:
	energize(body)

func activate(line_string: String) -> void:
	if line == '':
		line = line_string
		energy = true
	else:
		split_lines()

func _process(_delta: float) -> void:
	if energy == true: $AnimationPlayer.play("energizado")

func mouse_entered() -> void: sprite.scale = Vector2(1.05, 1.05)

func mouse_exited() -> void: sprite.scale = Vector2(1, 1)
