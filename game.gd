extends Node3D


@export var newBall :PackedScene


func _input(event):
	if event.is_action_pressed("newball") and Gamemanager.balls_ready > 0:
		Gamemanager.remove_ball()
		spawn_ball()



func spawn_ball():
	var ball = newBall.instantiate()
	get_node("BallArray").add_child(ball)
	ball.global_position = $Marker3D.position
