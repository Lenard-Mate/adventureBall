extends Control

func _ready():
	$BackgroundSound.play()

func _on_GoToMenu_pressed():
	get_tree().change_scene("res://environment/Menu.tscn")
