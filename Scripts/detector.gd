extends Area2D

func _on_body_entered(body: Node2D) -> void:
	$ColorRect.color = Color(0,1,0)

func _on_body_exited(body: Node2D) -> void:
	$ColorRect.color = Color (1,1,1)
