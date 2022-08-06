extends Node2D

var girl_player_dir: String = "res://Escenas/Personajes/Girl_Player/Girl_Player.tscn"
var boy_player_dir: String = "res://Escenas/Personajes/Player/Player.tscn"

func go_to_scene():
	get_tree().change_scene("res://Escenas/Niveles/Level.tscn")

func _on_Boy_Player_pressed():
	Gamehandler.player_dir = boy_player_dir
	go_to_scene()
	
func _on_Girl_Player_pressed():
	Gamehandler.player_dir = girl_player_dir
	go_to_scene()
	
func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Stage_menu.tscn")
