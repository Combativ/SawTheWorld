extends CanvasLayer


func _on_branch_slash():
	var point
	#initiate point scene
	var pointScene = preload("res://scenes/Point.tscn")
	point = pointScene.instance()
	
	#Spawn a point
	add_child(point)