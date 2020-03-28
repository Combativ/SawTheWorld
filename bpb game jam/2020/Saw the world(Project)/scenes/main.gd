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


	#Calculate thickness according to Weapon damage and trees killed
	global.thickness = 20 + (global.TreesKilled * 2) + (global.Weapons[global.WeaponLevel][2] * 10)
	#How many lives has the branch left?
	global.lives = global.thickness

func _process(delta):
	pass
	#Debug