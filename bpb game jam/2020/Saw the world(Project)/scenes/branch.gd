extends Area2D

signal slash
signal cut

#Variables
var xDistanceToMouse
var branchWidth = 558 #Ausgemessen!
var mouseAboveBranch = false #Für branch_slash

const MAXPOINTS = 10
var points
const MAXTIMEBONUS = 100
var TimeBonus

func _ready():
	#Start Stopwatch for calculating points
	$PointsStopwatch._reset_time()



func _process(delta):
	
	#Wenn die Maus über den Stamm fährt
	if get_local_mouse_position().y < 0 and mouseAboveBranch == false:
		mouseAboveBranch = true
		emit_signal("slash")
		
	if get_local_mouse_position().y > 100 and mouseAboveBranch == true:  #ACHTUNG Hard-gecodete Zahl!
		mouseAboveBranch = false
		emit_signal("slash")
		


func calculate_points():
	
	#Get x distance to mouse
	xDistanceToMouse = abs(get_global_mouse_position().x - position.x)
	#Multipliziere maximal erreichbare Punkte mit Abstand zu Säge
	points = MAXPOINTS * (1 - (xDistanceToMouse / branchWidth))
	#Runde diesen Wert
	points = round(points)
	
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
