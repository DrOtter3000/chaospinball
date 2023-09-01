extends Node3D


func update_LblPoints():
	$LblPoints.text = "Points " + str(Gamemanager.points)
