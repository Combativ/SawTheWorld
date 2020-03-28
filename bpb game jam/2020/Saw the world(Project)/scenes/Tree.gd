extends Node2D

signal fall

var TreeAlive = true

#Strength of Weapon
var strength = global.Weapons[global.WeaponLevel][2]

func _ready():
	
	#Set current TreeType
	$trunk.set_animation(global.TreeType)

func _process(delta):
	if global.lives <= 0 && TreeAlive == true:
		emit_signal("fall")
		TreeAlive = false

func _on_branch_slash():
	if global.lives > 0:
		global.lives -= strength
	
		#Sound
		#Und ein bisschen Abwechslung reinbringen
		$Ritsch.set_pitch_scale(rand_range(0.9, 1.1))
		$Ritsch.play()


func _on_branch_area_exited(area):
	pass # Replace with function body.
