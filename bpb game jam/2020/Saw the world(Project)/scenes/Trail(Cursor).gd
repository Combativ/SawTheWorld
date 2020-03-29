extends Line2D

var point
#How long shall the trail be?
export var TrailLength = 10


func _process(delta):
	point = get_global_mouse_position()
	add_point(point)
	
	while get_point_count() > TrailLength:
		remove_point(0)