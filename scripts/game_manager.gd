extends Node

const PONTOS_POR_ITEM :=10

var pontuacao := 0

var tempo_decorido :=0.0

const TEMPO_PARA_DOBRAR := 60.0

var  dificuldade :=1.0

func _process(delta: float) -> void:
	tempo_decorido += delta
	dificuldade = 1.0+ tempo_decorido /TEMPO_PARA_DOBRAR
func coletar_item() -> void:
	pontuacao += PONTOS_POR_ITEM
	
	print("pontos: ", pontuacao)
