extends Area2D

signal slashUp
signal slashDown
signal slash

signal cut

#Variables
var xDistanceToMouse
#Distance to farthest side (left or right)
#var cutWidth = max(abs(OS.get_window_size().x - position.x), position.x)
var branchWidth = 559 #Ausgemessen!
var mouseAboveBranch = false #Für branch_slash

const MAXPOINTS = 20
var points
const MAXTIMEBONUS = 100
var TimeBonus

func _ready():
	#Start Stopwatch for calculating points
	$PointsStopwatch._reset_time()


func _process(delta):
	
	#If tree is still alive and mouse in game
	if (global.lives > 0 &&
	get_global_mouse_position().x <= ProjectSettings.get_setting("display/window/size/width") &&
	get_global_mouse_position().x >= 0):
		#Wenn die Maus über den Stamm fährt
		if get_local_mouse_position().y < 0 and mouseAboveBranch == false:
			mouseAboveBranch = true
			emit_signal("slashUp")


			#Play sound accordingly to weapon and direction
			var sound_hin = get_node("WeaponSounds/" + str(global.Weapons[data.savedData["WeaponLevel"]][0]) + "_hin")
			#(randomize the pitch for variety)
			sound_hin.set_pitch_scale(rand_range(0.95, 1.05))
			sound_hin.play()

		if get_local_mouse_position().y > 100 and mouseAboveBranch == true:  #ACHTUNG Hard-gecodete Zahl!
			mouseAboveBranch = false
			emit_signal("slashDown")


			#Play sound accordingly to weapon and direction
			var sound_zurueck = get_node("WeaponSounds/" + str(global.Weapons[data.savedData["WeaponLevel"]][0]) + "_zurueck")
			#(randomize the pitch for variety)
			sound_zurueck.set_pitch_scale(rand_range(0.95, 1.05))
			sound_zurueck.play()

func _on_branch_slashUp():
	emit_signal("slash")
	
func _on_branch_slashDown():
	emit_signal("slash")


func calculate_points():
	
	
	#Get x distance to mouse
	xDistanceToMouse = abs(get_global_mouse_position().x - position.x)
	#Multipliziere maximal erreichbare Punkte mit Abstand zu Säge
	points = MAXPOINTS * (1 - (xDistanceToMouse / branchWidth))
	#Runde diesen Wert
	points = round(points)
	#Multipliziere mit WeaponLevel für Fortschritt
	#(WeaponLevel + 1 weil es bei erster Waffe 0 ist)
	points = points * (global.Weapons[data.savedData["WeaponLevel"]][2])
	
	return points
	
func calculate_time_bonus():
	#TimeBonus
	TimeBonus = MAXTIMEBONUS * pow(0.9, $PointsStopwatch._get_time())
	#Round
	TimeBonus = round(TimeBonus)
	return TimeBonus


#When Branch is cut
func _on_Tree_fall():
	$Animation.play("fall")
	$Holzbruch2.play()
	$gameOver.play()

#When branch has landed
func _on_Animation_animation_finished(anim_name):
	emit_signal("cut")
	$Knochenbruch1.play()
