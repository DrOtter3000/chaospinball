extends Control


var ready_to_skip = false

# Called when the node enters the scene tree for the first time.
func _ready():
	$CenterContainer/VBoxContainer/HBoxContainer/VBoxContainer/LblFinalScore.text = "Final Score: " + str(Gamemanager.points)
	$CenterContainer/VBoxContainer/HBoxContainer/VBoxContainer/LblContinue.visible = false


func _process(delta):
	if ready_to_skip:
		if Input.is_action_just_pressed("fire"):
			get_tree().change_scene_to_file("res://menu.tscn")


func _on_continue_timer_timeout():
	ready_to_skip = true
	$CenterContainer/VBoxContainer/HBoxContainer/VBoxContainer/LblContinue.visible = true
