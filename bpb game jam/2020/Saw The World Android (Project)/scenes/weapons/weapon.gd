extends Sprite

#Every weapon position is defined by its Offset
##because of their different shapes and sizes
var up = Vector2(0, 0)
var down = Vector2(110, 106)    #Magic numbers

func _process(delta):
	
	#Move accordingly
	if get_parent().get_local_mouse_position().y < 0:
		position = up
	else:
		position = down