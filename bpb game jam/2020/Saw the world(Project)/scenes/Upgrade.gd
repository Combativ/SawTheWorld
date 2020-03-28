extends Button

#Save modulate data
var color = modulate

var ButtonStatus = [false, false]  #MouseOver, UpgradeReady

#Get Weapon price from global script
var WeaponPrice = global.Weapons[global.WeaponLevel + 1][1]

func _process(delta):

	#Set UpgradeReady to true if Money is enough
	if global.money >= WeaponPrice:
		ButtonStatus[1] = true
	else:
		ButtonStatus[1] = false
	
	#modulate Button according to Status
	if ButtonStatus[1] == false:
		modulate = Color(0.5, 0.5, 0.5, 1)
	elif ButtonStatus == [true, true]:
		modulate = Color(0.8, 0.8, 0.8, 1)
	else:
		modulate = Color(1, 1, 1, 1)

func _on_Upgrade_mouse_entered():
	#Update ButtonStatus
	ButtonStatus[0] = true
	
	#Play select sound if Button not disabled
	if ButtonStatus[1] == true:
		get_parent().get_node("select").play()
	
func _on_Upgrade_mouse_exited():
	#Update ButtonStatus
	ButtonStatus[0] = false

#Make a new signal to satisfy the condition
signal WeaponUpgraded

func _on_Upgrade_pressed():
	#Only if UpgradeAvailable
	if ButtonStatus[1] == true:
		#Upgrade weapon
		global.WeaponLevel += 1
		#subtract money
		global.money -= WeaponPrice
		#Play Upgrade sound
		$UpgradeSound.play()
		
		#Update weapon price
		WeaponPrice = global.Weapons[global.WeaponLevel + 1][1]
		
		#Only emit signal if Weapon was actually upgraded
		emit_signal("WeaponUpgraded")