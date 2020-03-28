extends CanvasLayer


func _on_branch_slash():
	
	#initiate point scene
	var pointScene = preload("res://scenes/Point.tscn")
	#initiate damage scene
	var damageScene = preload("res://scenes/Damage.tscn")
	
	#Spawn a point
	add_child(pointScene.instance())
	#Spawn a damage
	add_child(damageScene.instance())