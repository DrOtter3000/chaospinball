extends Node


var points = 0
var balls = 0


func add_points(value):
	points += value


func _process(delta):
	if balls <= 0:
		game_over()


func game_over():
	print("Game Over")
