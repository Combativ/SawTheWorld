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