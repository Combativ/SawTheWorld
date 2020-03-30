extends Button

var color = modulate

func _on_Quit_mouse_entered():
	modulate = Color(0.8, 0.8, 0.8, 1)
	get_parent().get_parent().get_node("select").play()
	
func _on_Quit_mouse_exited():
	modulate = color


func _on_Quit_pressed():
	data.saveGame()
	get_tree().quit()