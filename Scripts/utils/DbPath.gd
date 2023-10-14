extends Node

const DATABASE_PATH_RES = "res://DataStore/database.db"
var DATABASE_PATH_USER
var DATABASE_NAME = "database.db"
var DATA_DIR = "user:/"

const PLATFORM_ANDROID = "Android"

func convert_path():
	var dir = DirAccess.open("res://DataStore")
	if OS.get_name() == PLATFORM_ANDROID:
		DATABASE_NAME = "database.pck"
	DATABASE_PATH_USER = DATA_DIR + "/" + DATABASE_NAME

	dir.copy(DATABASE_PATH_RES, DATABASE_PATH_USER);

	return DATABASE_PATH_USER
