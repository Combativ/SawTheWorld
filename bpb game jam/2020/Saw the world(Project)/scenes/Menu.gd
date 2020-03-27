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

func _on_Restart_mouse_entered():
	$Restart.get_canvas_item().visibility.moudulate.color($Restart.visibility.moudulate.color.darkened(100))
	$select.play()

func _on_Upgrade_mouse_entered():
	$select.play()

func _on_Quit_mouse_entered():
	$select.play()
