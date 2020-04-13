extends Label

func _on_branch_cut():
	data.savedData["TreesKilled"] += 1
	set_text("TREES KILLED: " + str(data.savedData["TreesKilled"]))