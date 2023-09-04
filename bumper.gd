extends StaticBody3D


@export var points = 50
var sound_array = ["res://SFX/Bounce_Sounds/Bounce_1.mp3", "res://SFX/Bounce_Sounds/Bounce_2.mp3", "res://SFX/Bounce_Sounds/Bounce_3.mp3", "res://SFX/Bounce_Sounds/Bounce_4.mp3", "res://SFX/Bounce_Sounds/Bounce_5.mp3", "res://SFX/Bounce_Sounds/Bounce_6.mp3"]


func _on_detection_area_body_entered(body):
	var random_sound = sound_array[randi_range(0, sound_array.size() -1)]
	$AudioStreamPlayer.stream = load(random_sound)
	$AudioStreamPlayer.play()
	if body.is_in_group("Ball"):
		$AnimationPlayer.play("bump")
		body.apply_impulse(Vector3(randi_range(-100, 100), randi_range(-100, 100), 0))
		Gamemanager.add_points(points)
