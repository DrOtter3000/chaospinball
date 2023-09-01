extends Area3D


@export var points = 50


func _on_body_entered(body):
	if body.is_in_group("Ball"):
		Gamemanager.add_points(points)
