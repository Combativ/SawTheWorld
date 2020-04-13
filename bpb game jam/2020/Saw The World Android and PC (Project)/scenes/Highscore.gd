extends Label

func _ready():
	pass

var CurrentScore

func _on_TimeBonusLabel_TimeBonusCalculated():
	CurrentScore = get_parent().get_parent().get_node("HUD/pointLabel").TotalPoints + get_parent().get_node("TimeBonusLabel").TimeBonus
	if CurrentScore > data.savedData["Highscore"]:
		data.savedData["Highscore"] = CurrentScore
	set_text("HIGHSCORE: " + str(data.savedData["Highscore"]))
