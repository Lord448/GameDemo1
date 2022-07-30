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


func _on_Bosque_pressed():
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Bosque.tscn"
	$Desierto.pressed = false

func _on_Desierto_pressed():
	Gamehandler.Stage = "res://Escenas/Niveles/Niveles_Arcade/Desierto.tscn"
	$Bosque.pressed = false
