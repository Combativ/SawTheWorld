extends AnimatedSprite


func _ready():
	show()
	#Set current animation
	set_animation(str(global.PeopleType))
	
	
func _process(delta):
	#Change according to mouse position
	if get_local_mouse_position().y > 0:
		set_frame(0)
	else:
		set_frame(1)