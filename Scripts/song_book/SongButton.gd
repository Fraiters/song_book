extends Button

var song

func _init(_song):
	song = _song
	self.set_text_button()

func _pressed():
	CurrentSongData.current_song = song
	get_tree().change_scene_to_file("res://Scenes/song.tscn")

func set_text_button():
	text = song.singer + " - " + song.name
	
func get_song():
	return song
