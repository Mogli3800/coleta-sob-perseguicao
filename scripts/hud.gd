extends CanvasLayer
func _process(delta: float) -> void:
	$RotoloPotuacao.text = "Pontos: " + str(GameManager.pontuacao)
	
