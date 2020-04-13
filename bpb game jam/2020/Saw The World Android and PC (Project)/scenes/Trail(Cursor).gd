extends Line2D

var point
#How long shall the trail be?
var TrailLength = 10


func _process(delta):
	if Input.is_mouse_button_pressed(1):
		point = get_global_mouse_position()
		add_point(point)
	else:
		clear_points()
	
	while get_point_count() > TrailLength:
		remove_point(0)



#New wait(s) function
func wait(s):
	var t = Timer.new()
	t.set_wait_time(s)
	t.set_one_shot(true)
	self.add_child(t)
	t.start()
	yield(t, "timeout")
	t.queue_free()