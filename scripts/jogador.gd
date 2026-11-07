extends CharacterBody3D
const VELOCIDADE := 2.5
const GRAVIDADE :=9.8


func _physics_process(delta: float) -> void:
	if GameManager.jogador_capiturado:
		$modelo/AnimationPlayer.play("die")
		GameManager.jogador_capiturado = false
		
	if GameManager.jogo_encerrar:
		return

	var direcao := Vector3.ZERO
	
	direcao.x = Input.get_axis("move_left", "move_right")
	direcao.z = Input.get_axis("move_forward", "move_back")
	
	direcao = direcao .normalized()
	if  direcao != Vector3.ZERO:
		
		$modelo/AnimationPlayer.play("walk")
	else:
		$modelo/AnimationPlayer.play("idle")
	
	velocity.x = direcao.x * VELOCIDADE
	velocity.z = direcao.z * VELOCIDADE
	if not is_on_floor():
		velocity.y -= GRAVIDADE * delta
		$modelo/AnimationPlayer.play("fall")
		
	#look_at(global_position + velocity)
		
	move_and_slide()
