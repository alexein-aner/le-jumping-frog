extends Node

@onready var points_label: Label = %PointsLabel
var points: int = 0

func add_point() -> void:
	points += 1
	points_label.text = "Points: " + str(points)
