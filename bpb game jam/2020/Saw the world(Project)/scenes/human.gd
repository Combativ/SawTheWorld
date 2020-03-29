extends AnimatedSprite


func _ready():
	hide()
	#Set current animation
	set_animation(str(global.PeopleType))
	
	
func _process(delta):
	#Change according to mouse position
	if get_parent().get_local_mouse_position().y > 0:
		set_frame(0)
	else:
		set_frame(1)