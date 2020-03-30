extends Sprite

#Every weapon position is defined by its Offset
##because of their different shapes and sizes
var up = Vector2(0, 0)
var down = Vector2(110, 106)    #Magic numbers

func _ready():
	#Connect signal slashUp and slashDown from branch to here
	get_parent().get_parent().get_parent().connect("slashUp", self, "_on_branch_slashUp")
	get_parent().get_parent().get_parent().connect("slashDown", self, "_on_branch_slashDown")
	
	#Set default to down to avoid a little graphic glitch
	position = down

func _on_branch_slashUp():
	position = up
	
func _on_branch_slashDown():
	position = down
