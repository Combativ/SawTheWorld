extends CanvasLayer

#Hide menu at start
func _ready():
	$background/Upgrade.hide()
	$background/Restart.hide()
	$background/Quit.hide()
	$background.hide()
	$TimeBonusLabel.hide()
	$Highscore.hide()
	$TreesKilled.hide()


func _on_branch_cut():
	$background/Upgrade.show()
	$background/Restart.show()
	$background/Quit.show()
	$background.show()
	$TimeBonusLabel.show()
	$Highscore.show()
	$TreesKilled.show()