extends CharacterBody2D

var gravetat:= Vector2.DOWN * 800
var velocitat := 200
var salt := -450
var a_terra := true


func _process(delta: float) -> void:
	var direcció_x = Input.get_axis("moure_esquerra","moure_dreta")
	if direcció_x != 0:
		$AnimatedSprite2D.flip_h = direcció_x == -1
	
	
		
	velocity.x = 0
	velocity.x += direcció_x * velocitat
	
	if is_on_floor():
		if not a_terra:
			$AnimatedSprite2D.play("Quiet")
		a_terra = true
	else:
		if a_terra and velocity.y > 0:
			$AnimatedSprite2D.play("Saltar")
		a_terra = false
	 
	if a_terra:
		if direcció_x != 0:
			$AnimatedSprite2D.play("Caminar")
		else:
			$AnimatedSprite2D.play("Quiet")
	

	if Input.is_action_just_pressed("salta") and a_terra:
		velocity.y += salt
		$AnimatedSprite2D.play("Saltar")
		
	velocity += gravetat * delta
	move_and_slide()
