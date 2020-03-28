extends Node

#For all games
var money = 0
var Highscore = 0

var Weapons: Array = [
				["Taschenmesser", 0, 1], #Name, Price, Damage
				["Fuchssäge", 100, 3],
				["Kreissäge", 500, 20],
				["Motorsäge", 2000, 100],
					]
var WeaponLevel = 0

#For one game
var TreeType = "Standard"
var TrunkType = "Standard_Baum"
var BranchType = "Standard_Ast"
var PeopleType = "hut"

#How many hits it takes to cut branch
var thickness = 30
#How many lives has the branch left?
var lives = thickness

func _ready():
	#Music      (https://www.gamefromscratch.com/page/Godot-3-Tutorial-Sound-FX-and-Music.aspx)
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://sounds/still-pickin.wav")
	#Lautstärke verringern
	player.set_volume_db(-10)
	player.play()