extends Node

var db
var db_data

func _init():
	var DbPath = load("res://Scripts/utils/DbPath.gd")
	var db_path = DbPath.new()
	var db_name = db_path.convert_path()
	var DbConnection = load("res://Scripts/utils/DbConnection.gd")
	var db_connection = DbConnection.new(db_name)
	
	db = db_connection.db

func data_from_db(table_name) -> Array[Dictionary]:
	db.open_db()
	var DbManagement = load("res://Scripts/utils/DbManagement.gd")
	var db_management = DbManagement.new()
	db_data = db_management.select_all(db, table_name)
	db.close_db()
	return db_data
