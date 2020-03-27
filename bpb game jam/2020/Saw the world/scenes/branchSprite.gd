extends AnimatedSprite

func _ready():
	#Set current animation
	set_animation(str(global.TreeType))
	show()
