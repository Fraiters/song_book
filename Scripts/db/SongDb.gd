extends Node

var table_name = "song_info"
var db_data

func _init():
	var DbData = load("res://Scripts/utils/DbData.gd")
	db_data = DbData.new()

func get_db_data() -> Array[Dictionary]:
	var data = db_data.data_from_db(table_name)
	return data
