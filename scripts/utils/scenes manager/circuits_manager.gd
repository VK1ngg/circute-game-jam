extends Node

func atualizar_rede(tree: SceneTree) -> void:
	await tree.physics_frame
	var todos_caminhos = tree.get_nodes_in_group("caminhos")

	for caminho in todos_caminhos:
		if caminho is Caminho and not caminho.eh_fonte:
			caminho.energia = false
	
	var fila: Array[Caminho] = []
	var visitados: Dictionary = {}

	for caminho in todos_caminhos:
		if caminho is Caminho and caminho.eh_fonte:
			caminho.energia = true
			fila.append(caminho)
			visitados[caminho] = true
			
	while fila.size() > 0:
		var atual = fila.pop_front()
		
		var vizinhos = atual.get_vizinhos_conectados()
		for vizinho in vizinhos:
			if vizinho is Caminho and vizinho.is_in_group("caminhos"):
				if not visitados.has(vizinho):
					visitados[vizinho] = true
					vizinho.energia = true
					fila.append(vizinho)
