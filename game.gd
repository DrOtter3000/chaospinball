extends Node3D


func _ready():
	for ball in $BallArray.get_children():
		Gamemanager.balls += 1

