extends VBoxContainer

var song_book = []

func _ready():
	self.set_song_book()
	for song in song_book:
		self.add_song_button(song)

func add_song_button(song):
	var SongButton = load("res://Scripts/song_book/SongButton.gd")
	var song_button = SongButton.new(song)
	self.add_child(song_button)

func set_song_book():
	var songs = self.get_song_data()
	var SongData = load("res://Scripts/data/SongData.gd")
	for song in songs:
		var song_data = SongData.new()
		song_data.set_song_data(song)
		song_book.append(song_data)
		
func get_song_data() -> Array[Dictionary]:
	var SongDb = load("res://Scripts/db/SongDb.gd")
	var song_db = SongDb.new()
	var songs = song_db.get_db_data()
	return songs
