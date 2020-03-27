extends Label

signal TotalPointsUpdate

#Vars
var TotalPoints = 0

func _ready():
	pass

func _on_branch_slash():
	TotalPoints += get_parent().get_parent().get_node("Tree/branch").calculate_points()
	
	set_text(str(TotalPoints))
	emit_signal("TotalPointsUpdate")
