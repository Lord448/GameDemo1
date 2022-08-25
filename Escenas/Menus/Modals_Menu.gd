extends Node2D

func _on_Historia_pressed():
	Gamehandler.modo = "Historia"
	if get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_1.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Arcade_pressed():
	Gamehandler.modo = "Arcade"
	if get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Salir_pressed():
	get_tree().quit()

func _on_Regresar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Main_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")
