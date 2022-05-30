extends Control


func _ready():
	pass


func _on_Start_pressed():
	get_tree().change_scene("res://environment/Level01.tscn")


func _on_Levels_pressed():
	get_tree().change_scene("res://environment/Levels.tscn")
