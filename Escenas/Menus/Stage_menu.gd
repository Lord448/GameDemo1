extends Node2D


func _ready():
	pass


func _on_Aceptar_pressed():
		get_tree().change_scene("res://Escenas/Menus/Characters_Menu_Arcade.tscn")
#NO BORRAR------------------------------------
#func _on_Aceptar_pressed():
#	if Gamehandler.Stage != null:
#		get_tree().change_scene(Gamehandler.Stage)
#	else:
#		pass
#---------------------------------------------
func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")

func _on_Stage_01_pressed():
	$Stage_02.pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_01.tscn"

func _on_Stage_02_pressed():
	$Stage_01.pressed = false
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Stage_02.tscn"
