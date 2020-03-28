extends Node2D

signal fall

#Strength of Weapon
var strength = global.Weapons[global.WeaponLevel][2]

func _ready():
	
	#Set current TreeType
	$trunk.set_animation(global.TreeType)

func _process(delta):
	if global.lives <= 0:
		emit_signal("fall")
		global.lives = global.thickness

func _on_branch_slash():
	global.lives -= strength


func _on_branch_area_exited(area):
	pass # Replace with function body.
