extends Node2D


func _on_Jugar_pressed():
	if get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn") != OK:
		print("Ha ocurrido un error inesperado al cargar la escena")

func _on_Salir_pressed():
	get_tree().quit()
