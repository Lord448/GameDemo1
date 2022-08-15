extends Node2D


func _on_Modos_Juego_pressed():
	get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")

func _on_Empezar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Characters_Menu.tscn")
