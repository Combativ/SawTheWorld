extends Node

var time: float = 0.0

func _ready():
	pass

func _process(delta):
	time += delta

func _get_time():
	return time
	
func _reset_time():
	time = 0.0