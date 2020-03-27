extends Label

signal TotalPointsUpdate

#Vars
var TotalPoints = 0

func _process(delta):
	set_text(str(TotalPoints))

func _on_branch_slash():
	TotalPoints += get_parent().get_parent().get_node("Tree/branch").calculate_points()
	
	emit_signal("TotalPointsUpdate")
