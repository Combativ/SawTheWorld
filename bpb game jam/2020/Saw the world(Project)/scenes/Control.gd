extends Node

func _ready():
	
	#SOUNDS (Shouldn't be stopped at game Restart)
	
	$game/Menu/Restart.connect("pressed", self, "_on_Restart_pressed")
	$game/Menu/Upgrade.connect("WeaponUpgraded", self, "_on_Upgrade_WeaponUpgraded")
	$game/Menu/Quit.connect("pressed", self, "_on_Quit_pressed")


func _on_Restart_pressed():
	#Play sound
	$click.play()
	
func _on_Upgrade_WeaponUpgraded():
	#Play sound
	$click.play()
	
func _on_Quit_pressed():
	#Play sound
	$click.play()