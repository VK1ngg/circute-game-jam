extends Area2D
class_name Caminho

@export var eh_fonte: bool = false
var energia: bool = false:
	set(val):
		energia = val
		atualizar_animacao()

@onready var sprite: Sprite2D = $Sprite2D 

func _ready() -> void:
	add_to_group("caminhos")
	var nome_cena = scene_file_path.get_file().get_basename()
	if nome_cena == "FonteEnergia":
		eh_fonte = true

func _process(_delta: float) -> void:
	pass

func atualizar_animacao() -> void:
	if has_node("AnimationPlayer"):
		if energia:
			$AnimationPlayer.play("energizado")
		else:
			$AnimationPlayer.play("RESET")

func _on_mouse_entered() -> void:
	if sprite: sprite.scale = Vector2(1.05, 1.05)

func _on_mouse_exited() -> void:
	if sprite: sprite.scale = Vector2(1, 1)

func _input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("click") and not eh_fonte:
		rotation_degrees += 90
		CircuitsManager.atualizar_rede(get_tree())

func get_vizinhos_conectados() -> Array[Caminho]:
	var vizinhos: Array[Caminho] = []
	
	for area in get_overlapping_areas():
		if area is Caminho and area.is_in_group("caminhos") and area != self:
			vizinhos.append(area)
			
	return vizinhos
