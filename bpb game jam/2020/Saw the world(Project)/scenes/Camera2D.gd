extends Camera2D

func _ready():
	make_current()
	position.y = 3000 - 1920

func _process(delta):
	if position.y > 0:
		position.y -= 20

func _on_Restart_pressed():
	pass