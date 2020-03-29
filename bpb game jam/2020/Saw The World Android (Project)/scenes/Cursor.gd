extends Node2D

func _ready():
	show()

func _process(delta):
	position = get_global_mouse_position()

