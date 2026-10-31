extends Node

const PONTOS_POR_ITEM :=10

var pontuacao := 0

var tempo_decorido :=0.0

func _process(delta: float) -> void:
	tempo_decorido += delta
func coletar_item() -> void:
	pontuacao += PONTOS_POR_ITEM
	
	print("pontos: ", pontuacao)
