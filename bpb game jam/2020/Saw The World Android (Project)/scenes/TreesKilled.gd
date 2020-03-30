extends Label

func _on_branch_cut():
	data.savedData["TreesKilled"] += 1
	set_text("Trees killed: " + str(data.savedData["TreesKilled"]))