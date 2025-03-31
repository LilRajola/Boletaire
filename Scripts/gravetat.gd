extends CharacterBody2D

var gravetat:= Vector2.DOWN * (980/2)
var velocitat := 200
var salt := -400
var salts_disponibles := max_salts
var max_salts := 2


func _process(delta: float) -> void:
	var dx = Input.get_axis("moure_esquerra","moure_dreta")
	
	velocity.x = 0
	velocity.x += dx * velocitat

	if Input.is_action_just_pressed("salta") and salts_disponibles > 0:
		velocity.y += salt
		salts_disponibles -= 1
		
	velocity += gravetat * delta
	move_and_slide()
	if is_on_floor():
		salts_disponibles = max_salts
