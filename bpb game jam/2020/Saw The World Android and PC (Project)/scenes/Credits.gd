extends Button

var mouse_pressed = false
var above_button = false


func _ready():
	$CreditsPanel.hide()


func _on_Credits_mouse_entered():
	above_button = true
	print("mouse entered")


func _on_Credits_mouse_exited():
	above_button = false
	print("mouse exited")


func _process(delta):
	
	#Check constantly if mouse is being pressed
	mouse_pressed = Input.is_mouse_button_pressed(1)
	
	#If so show Credits
	if above_button && mouse_pressed:
		$CreditsPanel.show()
	else:
		$CreditsPanel.hide()