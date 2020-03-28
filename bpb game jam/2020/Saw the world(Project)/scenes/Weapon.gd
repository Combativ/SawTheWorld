extends AnimatedSprite

var down = Vector2(-40, -169)   #Magic numbers
var up = Vector2(-75, -369)     #Magic numbers

func _ready():
	set_animation("Weapons")

func _process(delta):
	set_frame(global.WeaponLevel)
	
	#Move accordingly
	if get_parent().get_local_mouse_position().y > 0:
		position = down
	else:
		position = up



func _on_branch_slash():
	#Huii, fliegendes Holz!
	$sawdust.set_emitting(true)
	$SawdustTimer.start(0)


func _on_SawdustTimer_timeout():
	$sawdust.set_emitting(false)
