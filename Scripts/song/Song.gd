extends VBoxContainer

var song

func _ready():
	var SongLabel = load("res://Scripts/song/SongLabel.gd")
	
	song = CurrentSongData.current_song
	self.add_title_label(SongLabel, song.name, song.singer)
	self.add_song_text(SongLabel, song.text)
	
	
func add_title_label(ClassLabel, name_song, singer):
	var title = name_song + " - " + singer + "\n\n"
	var song_label = ClassLabel.new(title)
	self.add_child(song_label)

func add_song_text(ClassLabel, text):
	var song_label = ClassLabel.new(text)
	self.add_child(song_label)
