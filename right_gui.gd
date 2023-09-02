extends Node3D


func update_LblPoints():
	$LblPoints.text = "Points: " + str(Gamemanager.points)


func update_LblBalls():
	$LblBalls.text = "Balls: " + str(Gamemanager.balls_ready)
