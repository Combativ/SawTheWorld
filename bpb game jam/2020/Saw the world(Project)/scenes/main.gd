extends Node2D

#An Array of trees
var Trees: Array
var People: Array

func _ready():
	
	#Get a random seed
	randomize()
	
	#An Array of trees
	Trees = ["Birken",
			"Eukalyptus",
			"Kirsch",
			"Standard"]
			
	#Now choose one!
	global.TreeType = Trees[randi() % Trees.size()]
	#Define Trunks and Branches
	global.TrunkType = global.TreeType + "_Baum"
	global.BranchType = global.TreeType + "_Ast"
	
	
	#An Array of people
	People = ["hut",
			"kurz",
			"lang",
			"mittellang"]
			
	#Now choose one!
	global.PeopleType = People[randi() % People.size()]

func _process(delta):
	pass
	#Debug

func _on_Restart_pressed():
	global.lives = global.thickness
	get_tree().reload_current_scene()


func _on_Quit_pressed():
	get_tree().quit()



func _on_Upgrade_pressed():
	global.WeaponLevel += 1
