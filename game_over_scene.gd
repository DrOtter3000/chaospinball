extends Control


var ready_to_skip = false


func _ready():
	Gamemanager.balls_ready = 5
	$CenterContainer/VBoxContainer/LblTotalScore.text = "Total Score: " + str(Gamemanager.points)
	$CenterContainer/VBoxContainer/LblSkip.visible = false


func _input(event):
	if event.is_action_pressed("fire") and ready_to_skip:
		get_tree().change_scene_to_file("res://menu.tscn")

func _on_timer_timeout():
	ready_to_skip = true
	$CenterContainer/VBoxContainer/LblSkip.visible = true
	
