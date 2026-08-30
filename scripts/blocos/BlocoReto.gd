extends Block

@onready var sprite = $_

func energizar(body: Node2D) -> void:
	energize(body)

func activate(line_string: String) -> void:
	energy = true
	line = line_string

func _process(_delta: float) -> void:
	if energy == true: $AnimationPlayer.play("energizado")

func _on_mouse_entered() -> void: sprite.scale = Vector2(1.05, 1.05)

func _on_mouse_exited() -> void: sprite.scale = Vector2(1, 1)
