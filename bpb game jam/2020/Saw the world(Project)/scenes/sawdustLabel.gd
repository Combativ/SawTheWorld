extends Label

func _process(delta):
	#Money shouldn't be 0 at the start of every round
	set_text(str(global.money))

func _on_branch_slash():
	global.money += 1
