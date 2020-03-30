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




	#Calculate thickness according to Weapon damage and trees killed
	global.thickness = 20 + (data.savedData["TreesKilled"] * 2) + (global.Weapons[data.savedData["WeaponLevel"]][2] * 10)
	#How many lives has the branch left?
	global.lives = global.thickness

func _process(delta):
	pass
	#Debug