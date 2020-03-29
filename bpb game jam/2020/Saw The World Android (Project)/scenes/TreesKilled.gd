extends Label

func _on_branch_cut():
	global.TreesKilled += 1
	set_text("Trees killed: " + str(global.TreesKilled))