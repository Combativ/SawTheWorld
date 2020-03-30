extends Node2D

func _ready():
	add_child(global.WeaponScenes[data.savedData["WeaponLevel"]].instance())


func _on_branch_slash():
	#Huii, fliegendes Holz!
	$sawdust.set_emitting(true)
	$SawdustTimer.start(0)

func _on_SawdustTimer_timeout():
	$sawdust.set_emitting(false)
