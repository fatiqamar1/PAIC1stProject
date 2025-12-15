extends Area2D

func _on_body_entered(_body) -> void:
	get_tree().quit()
