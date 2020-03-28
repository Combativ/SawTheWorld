extends Node

#Preload the game to later instance it
const GAME = preload("res://scenes/game.tscn")

func _ready():
	
	#Start game
	Restart_Game()

	#MUSIC
	#Lautstärke verringern
	$BackgroundMusic.set_volume_db(-10)
	$BackgroundMusic.play()


func _on_Restart_pressed():

	#RESTART GAME
	#prevent duplicate issues
	$game.name = "gameOld"
	$gameOld.queue_free()
	
	#Play sound
	$click.play()
	
	#Restart
	Restart_Game()
	
func _on_Upgrade_WeaponUpgraded():
	#Play sound
	$click.play()
	
func _on_Quit_pressed():
	#Play sound
	$click.play()


func Restart_Game():

	#Instance/start the game
	var game = GAME.instance()
	add_child(game)

	#SOUNDS (Shouldn't be stopped at game Restart)
	$game/Menu/Restart.connect("pressed", self, "_on_Restart_pressed")
	$game/Menu/Upgrade.connect("WeaponUpgraded", self, "_on_Upgrade_WeaponUpgraded")
	$game/Menu/Quit.connect("pressed", self, "_on_Quit_pressed")