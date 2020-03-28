extends Node2D

#Wie viele Sekunden soll der Punkt zusehen sein?
var lifetime = 1
#Wie schnell soll er nach ober gehen?
var speed = 50
#Wie schnell soll er durchsichtig werden?
var decay = lifetime

func _ready():
	#Go to mouse
	position = get_global_mouse_position()
	
	#Calculate points
	var points = 1
	#Set right text
	$Label.set_text(str(points))
	
	print(get_tree().get_root())

func _process(delta):
	#Move upwards
	position.y -= speed * delta
	#Become transparent over time
	$Label.modulate = Color(1, 1, 1, lifetime)
	
	#Kill point after 1 second
	lifetime -= 1 * delta
	if lifetime <= 0:
		queue_free()