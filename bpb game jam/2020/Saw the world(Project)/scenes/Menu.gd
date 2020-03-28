extends CanvasLayer

#Hide menu at start
func _ready():
	$Upgrade.hide()
	$Restart.hide()
	$Quit.hide()
	$background.hide()
	$TimeBonusLabel.hide()
	$Highscore.hide()
	$TreesKilled.hide()


func _on_branch_cut():
	$Upgrade.show()
	$Restart.show()
	$Quit.show()
	$background.show()
	$TimeBonusLabel.show()
	$Highscore.show()
	$TreesKilled.show()