extends StaticBody3D




func _on_detection_area_body_entered(body):
	if body.is_in_group("Ball"):
		$AnimationPlayer.play("bump")
		body.apply_impulse(Vector3(100, 100, 0))
