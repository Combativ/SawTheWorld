extends Sprite

func _ready():
	position = Vector2(215, -1595)

	print(self.get_owner())


func _process(delta):
	if Input.is_action_pressed("ui_down"):
		offset.y += 1
	if Input.is_action_pressed("ui_up"):
		offset.y -= 1
	if Input.is_action_pressed("ui_left"):
		offset.x -= 1
	if Input.is_action_pressed("ui_right"):
		offset.x += 1
	print(offset)