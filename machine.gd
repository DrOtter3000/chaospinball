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


func _on_timer_timeout():
	var change_status = randi_range(0,2)
	print(change_status)
	if change_status == 1:
		$TriangleOfFun.scale = Vector3(1,1,1)
		$TriangleOfFun.rotate_y(randi_range(-180, 180))
	if change_status == 2:
		$TriangleOfFun.scale = Vector3(1,1,1)
		$TriangleOfFun.position.x = randi_range(-15, 15)
	else:
		$TriangleOfFun.scale = Vector3.ZERO
