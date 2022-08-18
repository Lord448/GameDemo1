extends Node2D

var girl_player_dir: String = "res://Escenas/Personajes/Girl_Player/Girl_Player.tscn"
var boy_player_dir: String = "res://Escenas/Personajes/Player/Player.tscn"

func _on_Characters_Menu_Arcade_ready():
	$Advertencia.visible = false
	Gamehandler.player_dir = ""


func _on_Boy_Player_pressed():
	Gamehandler.player_dir = boy_player_dir
	$"Control/Girl Player".pressed = false
	$Advertencia.visible = false

func _on_Girl_Player_pressed():
	Gamehandler.player_dir = girl_player_dir
	$"Control/Boy Player".pressed = false
	$Advertencia.visible = false

func _on_Aceptar_pressed():
	if Gamehandler.player_dir == "":
		$Advertencia.visible = true
	else:
		get_tree().change_scene("res://Escenas/Menus/Stage_menu.tscn")

func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")
