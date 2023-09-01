extends StaticBody3D


@export var points = 25


func _on_point_area_body_entered(body):
	if body.is_in_group("Ball"):
		Gamemanager.add_points(points)
