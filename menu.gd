extends Control


var quote_array = ["Chaos can be boring too", "Boring can be annoying too", "All sounds DIY... next time I will use bought ones again", "Upsi Woopsi, a wittle fuckoboingo", "Why? Just WHY?"]


func _ready():
	randomize()
	var random_text = quote_array[randi_range(0, quote_array.size() -1)]
	$LblSubtitle.text = random_text


func _on_btn_start_pressed():
	Gamemanager.balls_ready = 10
	Gamemanager.points = 0
	get_tree().change_scene_to_file("res://game.tscn")


func _on_btn_start_2_pressed():
	get_tree().quit()
