extends Area2D


func _on_body_entered(body: Node2D) -> void:
	$Sprite2D.visible = false
	body.agafa_bolet()
	
