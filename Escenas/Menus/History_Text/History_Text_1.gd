extends Node2D

func _on_Regresar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Saltar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Instrucciones.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Siguiente_pressed():
	if get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_2.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Atras_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")
