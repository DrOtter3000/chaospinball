extends Node3D


@export var newParticles :PackedScene
var warp_array = ["res://SFX/Warp_Sounds/Warp_1.mp3", "res://SFX/Warp_Sounds/Warp_2.mp3", "res://SFX/Warp_Sounds/Warp_3.mp3", "res://SFX/Warp_Sounds/Warp_4.mp3", "res://SFX/Warp_Sounds/Warp_5.mp3", "res://SFX/Warp_Sounds/Warp_6.mp3"]


func _process(delta):
	if Input.is_action_just_pressed("fire"):
		$SpringPlayer.play("fire")


func _on_ball_lost_area_body_entered(body):
	if body.is_in_group("Ball"):
		Gamemanager.balls -= 1
		print(Gamemanager.balls)
		body.queue_free()


func _on_area_3d_body_entered(body):
	var random_warp = warp_array[randi_range(0, warp_array.size() -1)]
	if body.is_in_group("Ball"):
		var exit_list = get_node("PortalExits").get_children()
		var random_exit = exit_list[randi_range(0, exit_list.size()-1)]
		body.position = random_exit.global_position
		teleport_particles(random_exit.position)
		$AudioStreamPlayer.stream = load(random_warp)
		$AudioStreamPlayer.play()


func teleport_particles(pos):
	var particles = newParticles.instantiate()
	add_child(particles)
	particles.position = pos


