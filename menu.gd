extends Control


func _on_btn_start_pressed():
	Gamemanager.balls_ready = 5
	Gamemanager.gameover = false
	Gamemanager.points = 0
	get_tree().change_scene_to_file("res://game.tscn")


func _on_btn_start_2_pressed():
	get_tree().quit()
