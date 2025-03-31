extends CharacterBody2D

var velocitat := 200
var direccio := Vector2.ZERO

func _ready() -> void:
	pass
func _process(delta: float) -> void:
	direccio = Input.get_vector("moure_esquerra","moure_dreta","moure_amunt","moure_avall")
	velocity =  direccio * velocitat
	move_and_slide()
	anima(velocity,delta)
	
func anima(desplaçament : Vector2, delta: float):
	$"Roda del darrere".rotation += desplaçament.x / 20 *delta
	$"Roda devantera".rotation += desplaçament.x / 20 *delta  
