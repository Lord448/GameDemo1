extends Node2D

func _on_Historia_pressed():
	get_tree().change_scene("res://Escenas/Menus/History_Text/History_Text_1.tscn")

func _on_Arcade_pressed():
	get_tree().change_scene("res://Escenas/Menus/Arcade_menu.tscn")

func _on_Salir_pressed():
	get_tree().quit()

func _on_Regresar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Main_Menu.tscn")
