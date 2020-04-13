extends Label

signal TimeBonusCalculated

var TimeBonus

func _ready():
	pass

func _process(delta):
	pass

func _on_branch_cut():
	TimeBonus = get_parent().get_parent().get_node("Tree/branch").calculate_time_bonus()
	set_text("TIME BONUS: " + str(TimeBonus))
	emit_signal("TimeBonusCalculated")
