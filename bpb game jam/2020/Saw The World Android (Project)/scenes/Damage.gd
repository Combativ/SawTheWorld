extends Node2D

#Wie viele Sekunden soll der Schaden zusehen sein?
var lifetime = 1
#Wie schnell soll er nach unten gehen?
var speed = 50
#Wie schnell soll er durchsichtig werden?
var decay = lifetime

func _ready():
	
	#Get end of health bar
	var posX = get_parent().get_node("lives").get_texture().get_width() * get_parent().get_node("lives").get_scale().x
	var posY = get_parent().get_node("lives").get_texture().get_size().y
	#Go to health bar
	position = Vector2(posX, posY)
	
	#Calculate damage
	var damage = global.Weapons[global.WeaponLevel][2]
	#Set right text
	$Label.set_text("-" + str(damage))

func _process(delta):
	#Move upwards
	position.y += speed * delta
	#Become transparent over time
	$Label.modulate = Color(1, 1, 1, lifetime)
	
	#Kill point after 1 second
	lifetime -= 1 * delta
	if lifetime <= 0:
		queue_free()