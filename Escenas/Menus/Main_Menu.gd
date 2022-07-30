extends Node2D


func _on_Jugar_pressed():
	get_tree().change_scene("res://Escenas/Menus/Modals_Menu.tscn")


func _on_Salir_pressed():
	get_tree().quit()


func _on_Play_pressed():
	get_tree().change_scene("res://Escenas/Menus/Characters_Menu.tscn")
