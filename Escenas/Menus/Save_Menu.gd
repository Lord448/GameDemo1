extends Node2D

func _on_Regresar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")
