extends Label

func _process(delta):
	#Money shouldn't be 0 at the start of every round
	set_text(str(data.savedData["Money"]))

func _on_branch_slash():
	data.savedData["Money"] += global.Weapons[data.savedData["WeaponLevel"]][2]

func _on_branch_cut():
	#Punkte für Schnelligkeit
	var timebonus = get_parent().get_parent().get_node("Tree/branch").calculate_time_bonus()
	
	data.savedData["Money"] += round(timebonus / 10)