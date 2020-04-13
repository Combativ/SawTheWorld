extends Sprite

func _ready():
	pass

func _process(delta):
	set_scale(Vector2(float(global.lives) / float(global.thickness), 1))
	set_modulate(Color(1, float(global.lives) / float(global.thickness), float(global.lives) / float(global.thickness), 1))