extends CanvasLayer

#Hide menu at start
func _ready():
	$Upgrade.hide()
	$Restart.hide()
	$Quit.hide()
	$background.hide()
	$TimeBonusLabel.hide()
	$Highscore.hide()

func _process(delta):
	pass


func _on_branch_cut():
	$Upgrade.show()
	$Restart.show()
	$Quit.show()
	$background.show()
	$TimeBonusLabel.show()
	$Highscore.show()