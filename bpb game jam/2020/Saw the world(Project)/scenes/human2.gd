extends Node2D

func _ready():
	#Choose a character outfit (from global.gd)
	#var hairstyle = global.hairstyles[randi() % global.hairstyles.size()]
	var hairstyle = global.hairstyles[3]
	var skintone = global.skintones[randi() % global.skintones.size()]
	var trousers = global.trousers[randi() % global.trousers.size()]
	var pullover = global.pullovers[randi() % global.pullovers.size()]
	var footwear = global.footwear[randi() % global.footwear.size()]
	global.character = [hairstyle, skintone, trousers, pullover, footwear]

	
	#Hairstyle
	var hairstyleInstance = global.character[0].instance()
	hairstyleInstance.set_z_index(4)
	add_child(hairstyleInstance)
	#Skintone
	var skintoneInstance = global.character[1].instance()
	skintoneInstance.set_z_index(3)
	add_child(skintoneInstance)
	#Trousers
	var trousersInstance = global.character[2].instance()
	trousersInstance.set_z_index(5)
	add_child(trousersInstance)
	#Pullover
	var pulloverInstance = global.character[3].instance()
	pulloverInstance.set_z_index(4)
	add_child(pulloverInstance)
	#Footwear
	var footwearInstance = global.character[4].instance()
	footwearInstance.set_z_index(3)
	add_child(footwearInstance)
