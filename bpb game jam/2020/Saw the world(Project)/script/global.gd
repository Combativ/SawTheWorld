extends Node

###FOR ALL GAMES###
var money = 0
var Highscore = 0

##Weapons##
var Weapons: Array = [
			["Taschenmesser", 0, 1], #Name, Price, Damage
			["Fuchsschwanzsäge", 100, 3],
			["Kreissäge", 500, 20],
			["Kettensäge", 2000, 100],
			["Unobtainable", pow(9, 9), 9000]
					]
var WeaponLevel = 0


##Customizable character##

#Preload all human sprites
var hairstyles = [
		preload("res://scenes/character/hairstyles/hairstyle1.tscn"),
		preload("res://scenes/character/hairstyles/hairstyle2.tscn"),
		preload("res://scenes/character/hairstyles/hairstyle3.tscn"),
		preload("res://scenes/character/hairstyles/hairstyle4.tscn"),
				]
var skintones = [
		preload("res://scenes/character/skintones/skintone1.tscn"),
			]
var trousers = [
		preload("res://scenes/character/trousers/trouser1.tscn"),
		preload("res://scenes/character/trousers/trouser2.tscn"),
		preload("res://scenes/character/trousers/trouser3.tscn"),
		preload("res://scenes/character/trousers/trouser4.tscn"),
			]
var pullovers = [
		preload("res://scenes/character/pullovers/pullover1.tscn"),
		preload("res://scenes/character/pullovers/pullover2.tscn"),
		preload("res://scenes/character/pullovers/pullover3.tscn"),
		preload("res://scenes/character/pullovers/pullover4.tscn"),
			]
var footwear = [
		preload("res://scenes/character/footwear/footwear1.tscn"),
		preload("res://scenes/character/footwear/footwear2.tscn"),
		preload("res://scenes/character/footwear/footwear3.tscn"),
		preload("res://scenes/character/footwear/footwear4.tscn"),
			]


#For later use in main (standard values)
var character = []




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