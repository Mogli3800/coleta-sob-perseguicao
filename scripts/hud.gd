extends CanvasLayer
func _process(delta: float) -> void:
	$RotoloPotuacao.text = "Pontos: " + str(GameManager.pontuacao)	


	$Rotolotempo.text = "Tempo: " + str(int(GameManager.tempo_decorido))
	
