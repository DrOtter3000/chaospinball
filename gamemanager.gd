extends Node


var points = 0
var balls = 0
var balls_ready = 1


func add_points(value):
	points += value
	get_tree().call_group("GUI", "update_LblPoints")


func remove_ball():
	balls_ready -= 1
	get_tree().call_group("GUI", "update_LblBalls")


func _process(delta):
	if balls <= 0 and balls_ready <= 0:
		game_over()


func game_over():
	get_tree().change_scene_to_file("res://game_over_scene.tscn")
