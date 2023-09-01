extends RigidBody3D


func _ready():
	randomize()


func _on_timer_timeout():
	var material = randi_range(0,2)
	if material == 0:
		physics_material_override.resource_path = "res://Materials/BallPhysicsMaterial.tres"
	elif material == 1:
		physics_material_override.resource_path = "res://Materials/BallPhysicsMaterial_fullBounce.tres"
