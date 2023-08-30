extends AnimatableBody3D


@export var target_angle = 45
var normal_position = 25.6


func _ready():
	normal_position = rotation.y


func _process(delta):
	if Input.is_action_pressed("right"):
		rotation.y -= 0.25
	else:
		rotation.y = 25.6
