var song_db

var id
var name
var singer
var text

func _init():
	var SongDb = load("res://Scripts/db/SongDb.gd")
	song_db = SongDb.new()

func set_song_data(song):
	id = song["id"]
	name = song["name"]
	singer = song["singer"]
	text = song["text"]
