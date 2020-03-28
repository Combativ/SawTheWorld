extends Node

###FOR ALL GAMES###
var money = 0
var Highscore = 0

var Weapons: Array = [
			["Taschenmesser", 0, 1], #Name, Price, Damage
			["Fuchssäge", 100, 3],
			["Kreissäge", 500, 20],
			["Motorsäge", 2000, 100],
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


	#Music      (https://www.gamefromscratch.com/page/Godot-3-Tutorial-Sound-FX-and-Music.aspx)
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://sounds/still-pickin.wav")
	#Lautstärke verringern
	player.set_volume_db(-10)
	player.play()


###Functions that have to be accessible from everywhere###
#func calculate_points():
#
#	var MAXPOINTS = 10
#	var branchWidth = 558 #Ausgemessen!
#
#	#Get x distance to mouse
#	var xDistanceToMouse = abs(get_viewport().get_global_mouse_position().x - find_node("branch").position.x)
#	#Multipliziere maximal erreichbare Punkte mit Abstand zu Säge
#	var points = MAXPOINTS * (1 - (xDistanceToMouse / branchWidth))
#	#Runde diesen Wert
#	points = round(points)
#
#	return points