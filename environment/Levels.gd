extends Control


func _ready():
	pass


func _on_back_pressed():
	get_tree().change_scene("res://environment/Menu.tscn")


func _on_Level01_pressed():
	get_tree().change_scene("res://environment/Level01.tscn")


func _on_Level02_pressed():
	get_tree().change_scene("res://environment/Level02.tscn")


func _on_Level03_pressed():
	get_tree().change_scene("res://environment/Level03.tscn")
	


func _on_Level04_pressed():
	get_tree().change_scene("res://environment/Level04.tscn")


func _on_Level05_pressed():
	get_tree().change_scene("res://environment/Level05.tscn")


func _on_Level06_pressed():
	get_tree().change_scene("res://environment/Level06.tscn")
