extends Node3D


@export var newParticles :PackedScene


func _process(delta):
	if Input.is_action_just_pressed("fire"):
		$AnimationPlayer.play("fire")


func _on_game_over_area_body_entered(body):
	if body.is_in_group("Ball"):
		Gamemanager.game_over()
		body.queue_free()


func _on_area_3d_body_entered(body):
	if body.is_in_group("Ball"):
		var exit_list = get_node("PortalExits").get_children()
		var random_exit = exit_list[randi_range(0, exit_list.size()-1)]
		body.position = random_exit.global_position
		teleport_particles(random_exit.position)


func teleport_particles(pos):
	var particles = newParticles.instantiate()
	add_child(particles)
	particles.position = pos
