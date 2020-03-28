extends Node

###FOR ALL GAMES###
var money = 0
var Highscore = 0

var Weapons: Array = [
			["Taschenmesser", 0, 1], #Name, Price, Damage
			["Fuchsschwanzsäge", 100, 3],
			["Kreissäge", 500, 20],
			["Kettensäge", 2000, 100],
			["Unobtainable", pow(9, 9), 9000]
					]
var WeaponLevel = 0


###FOR ONE GAME###
var TreeType = "Standard"
var TrunkType = "Standard_Baum"
var BranchType = "Standard_Ast"
var PeopleType = "hut"

#How many trees has the player killed?
var TreesKilled = 0
#How thiccc is the branch? (Gets calculated in game node)
var thickness = 0
#Store remaining lives in separate variable 
##(Gets calculated in game node)
var lives = 0

func _ready():
	pass