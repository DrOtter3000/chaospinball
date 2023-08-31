extends Node3D


@export var newBall :PackedScene


func _ready():
	spawn_ball()
	for ball in $BallArray.get_children():
		Gamemanager.balls += 1


func spawn_ball():
	var ball = newBall.instantiate()
	get_node("BallArray").add_child(ball)
	ball.global_position = $Marker3D.position
