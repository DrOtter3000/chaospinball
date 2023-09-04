extends RigidBody3D


var sound_array = ["res://SFX/Boring_Sounds/Boring_1.mp3", "res://SFX/Boring_Sounds/Boring_2.mp3", "res://SFX/Boring_Sounds/Boring_3.mp3", "res://SFX/Boring_Sounds/Boring_4.mp3", "res://SFX/Boring_Sounds/Boring_5.mp3", "res://SFX/Boring_Sounds/Boring_6.mp3", "res://SFX/Boring_Sounds/Boring_7.mp3"]


func _ready():
	randomize()
	$AudioStreamPlayer.pitch_scale = randi_range(0.8, 1.2)
	Gamemanager.balls += 1
	print(Gamemanager.balls)


func _on_area_3d_body_entered(body):
	var random_boring_sound = sound_array[randi_range(0, sound_array.size()-1)]
	$AudioStreamPlayer.stream = load(random_boring_sound)
	$AudioStreamPlayer.play()

