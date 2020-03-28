extends Button

var color = modulate

func _on_Upgrade_mouse_entered():
	modulate = Color(0.8, 0.8, 0.8, 1)
	get_parent().get_node("select").play()
func _on_Upgrade_mouse_exited():
	modulate = color


func _on_Upgrade_pressed():
	var WeaponPrice = global.Weapons[global.WeaponLevel + 1][1]
	if global.money >= WeaponPrice:
		global.WeaponLevel += 1
		global.money -= WeaponPrice