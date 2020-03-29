extends AnimatedSprite


func _ready():
	show()
	position = Vector2(-200, -950)

func _process(delta):
	#Change according to mouse position
	if get_parent().get_local_mouse_position().y > 0:
		set_frame(1)
	else:
		set_frame(0)
	
	
#	if Input.is_action_pressed("ui_down"):
#		position.y += 1
#	if Input.is_action_pressed("ui_up"):
#		position.y -= 1
#	if Input.is_action_pressed("ui_left"):
#		position.x -= 1
#	if Input.is_action_pressed("ui_right"):
#		position.x += 1
#	print(position)
	