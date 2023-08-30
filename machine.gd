extends Node3D


func _process(delta):
	if Input.is_action_just_pressed("fire"):
		$AnimationPlayer.play("fire")


func _on_game_over_area_body_entered(body):
	if body.is_in_group("Ball"):
		get_tree().call_group("Game", "game_over")
		body.queue_free()
