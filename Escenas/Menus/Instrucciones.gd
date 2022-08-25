extends Node2D


func _on_Modos_Juego_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Empezar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Characters_Menu_Arcade.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")
