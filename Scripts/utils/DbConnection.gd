extends Node

var db

func _init(db_name):
	db = SQLite.new()
	db.read_only = true
	db.path = db_name
