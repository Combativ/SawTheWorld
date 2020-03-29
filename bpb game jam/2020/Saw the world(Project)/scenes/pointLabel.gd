extends Label

signal TotalPointsUpdate

#Vars
var TotalPoints = 0

func _process(delta):
	set_text(str(TotalPoints))

func _on_branch_slash():
	#If Tree is still alive
	if global.lives > 0:
		#Calculate ponts that should be added
		var AddedPoints = get_parent().get_parent().get_node("Tree/branch").calculate_points()
		TotalPoints += AddedPoints
	
		emit_signal("TotalPointsUpdate")
