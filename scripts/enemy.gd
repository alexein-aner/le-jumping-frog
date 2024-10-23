extends Area2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	var y_delta: int = position.y - body.position.y
	print(str(y_delta))
