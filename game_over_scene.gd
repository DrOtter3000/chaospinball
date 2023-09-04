extends Control


var ready_to_skip = false
var sound_array = ["res://SFX/GameOver_Sounds/GameOver_1.mp3", "res://SFX/GameOver_Sounds/GameOver_2.mp3", "res://SFX/GameOver_Sounds/GameOver_3.mp3", "res://SFX/GameOver_Sounds/GameOver_4.mp3", "res://SFX/GameOver_Sounds/GameOver_5.mp3"]


func _ready():
	randomize()
	var random_sound = sound_array[randi_range(0, sound_array.size() -1)]
	$AudioStreamPlayer.stream = load(random_sound)
	$AudioStreamPlayer.play()
	Gamemanager.balls_ready = 5
	$CenterContainer/VBoxContainer/LblTotalScore.text = "Total Score: " + str(Gamemanager.points)
	$CenterContainer/VBoxContainer/LblSkip.visible = false
	


func _input(event):
	if event.is_action_pressed("fire") and ready_to_skip:
		get_tree().change_scene_to_file("res://menu.tscn")

func _on_timer_timeout():
	ready_to_skip = true
	$CenterContainer/VBoxContainer/LblSkip.visible = true
	
