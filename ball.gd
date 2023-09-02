extends RigidBody3D


func _ready():
	Gamemanager.balls += 1
	print(Gamemanager.balls)
