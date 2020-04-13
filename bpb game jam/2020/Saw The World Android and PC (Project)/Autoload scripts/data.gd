extends Node

const FILE_NAME = "user://game-data.json"

#Data that should be saved when app is closed
var savedData = {
	"Highscore": 0,
	"Money": 0,
	"WeaponLevel": 0,
	"TreesKilled": 0,
}

func saveGame():
	var file = File.new()
	file.open(FILE_NAME, File.WRITE)
	file.store_string(to_json(savedData))
	file.close()

func loadGame():
	var file = File.new()
	if file.file_exists(FILE_NAME):
		file.open(FILE_NAME, File.READ)
		var data = parse_json(file.get_as_text())
		file.close()
		if typeof(data) == TYPE_DICTIONARY:
			savedData = data
		else:
			printerr("Corrupted data!")
	else:
		printerr("No saved data!")
