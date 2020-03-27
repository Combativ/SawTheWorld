extends Button

var color = modulate

func _on_Upgrade_mouse_entered():
	modulate = Color(0.8, 0.8, 0.8, 1)
	get_parent().get_node("select").play()
func _on_Upgrade_mouse_exited():
	modulate = color