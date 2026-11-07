extends Node

const PONTOS_POR_ITEM :=10

var pontuacao := 0

var tempo_decorido :=0.0

const TEMPO_PARA_DOBRAR := 60.0

var  dificuldade :=1.0

var jogo_encerrar := false

var total_itens := 0
var itens_coletados := 0

func vencer() -> void:
	jogo_encerrar = true
	print("vitoria")

func perder() -> void:
	jogo_encerrar = true
	
	print("Derrota")

func _process(delta: float) -> void:
	if  not jogo_encerrar:
		tempo_decorido += delta
		dificuldade = 1.0+ tempo_decorido /TEMPO_PARA_DOBRAR
func coletar_item() -> void:
	pontuacao += PONTOS_POR_ITEM
	
	itens_coletados += 1

	if itens_coletados== total_itens:
		vencer()
