extends Button

var color = modulate

func _on_Restart_mouse_entered():
	modulate = Color(0.8, 0.8, 0.8, 1)
	get_parent().get_node("select").set_pitch_scale(1)
	get_parent().get_node("select").play()
func _on_Restart_mouse_exited():
	modulate = color


func _on_Restart_pressed():
	global.lives = global.thickness
	get_tree().reload_current_scene()