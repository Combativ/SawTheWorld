extends Label

func _ready():
	pass

var CurrentScore

func _on_TimeBonusLabel_TimeBonusCalculated():
	CurrentScore = get_parent().get_parent().get_node("HUD/pointLabel").TotalPoints + get_parent().get_node("TimeBonusLabel").TimeBonus
	if CurrentScore > global.Highscore:
		global.Highscore = CurrentScore
	set_text("Highscore: " + str(global.Highscore))
