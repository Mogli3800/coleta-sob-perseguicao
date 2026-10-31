extends Node

const PONTOS_POR_ITEM :=10

var pontuacao := 0

func coletar_item() -> void:
	pontuacao += PONTOS_POR_ITEM
	
	print("pontos: ", pontuacao)
