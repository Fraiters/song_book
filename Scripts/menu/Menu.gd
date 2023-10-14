extends Control 

func _on_song_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/song_book.tscn")

func _on_quit_button_pressed():
	get_tree().quit()
