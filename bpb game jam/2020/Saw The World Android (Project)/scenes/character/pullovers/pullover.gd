extends AnimatedSprite


func _ready():
	show()
	position = Vector2(-200, -950)

	#Connect signal slashUp and slashDown from branch to here
	get_parent().get_parent().connect("slashUp", self, "_on_branch_slashUp")
	get_parent().get_parent().connect("slashDown", self, "_on_branch_slashDown")


func _on_branch_slashUp():
	set_frame(1)
	
func _on_branch_slashDown():
	set_frame(0)
	