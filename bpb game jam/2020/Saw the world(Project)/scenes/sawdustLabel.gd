extends Label

func _process(delta):
	#Money shouldn't be 0 at the start of every round
	set_text(str(global.money))

func _on_branch_slash():
	global.money += 1

func _on_branch_cut():
	#Punkte für Schnelligkeit
	var timebonus = get_parent().get_parent().get_node("Tree/branch").calculate_time_bonus()
	
	global.money += round(timebonus / 10)